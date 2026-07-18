import 'dart:io';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';

class ParsedImport {
  final String uri;
  final List<String>? showNames;

  ParsedImport({
    required this.uri,
    this.showNames,
  });

  factory ParsedImport.fromDirective(ImportDirective directive) {
    final uri = directive.uri.stringValue ??
        directive.uri
            .toSource()
            .replaceAll("'", '')
            .replaceAll('"', '')
            .trim();

    List<String>? showNames;
    for (final combinator in directive.combinators) {
      if (combinator is ShowCombinator) {
        showNames = combinator.shownNames.map((name) => name.name).toList();
      }
    }

    return ParsedImport(uri: uri, showNames: showNames);
  }
}

class ParsedMethod {
  final String name;
  final String returnType;
  final String rightType;
  final String parameters;
  final String parameterCall;
  final Set<String> requiredTypes;

  ParsedMethod({
    required this.name,
    required this.returnType,
    required this.rightType,
    required this.parameters,
    required this.parameterCall,
    required this.requiredTypes,
  });
}

class ParsedRepository {
  final String name;
  final List<ParsedImport> parsedImports;
  final List<ParsedMethod> methods;

  ParsedRepository({
    required this.name,
    required this.parsedImports,
    required this.methods,
  });
}

class RepositoryParser {
  static const _ignoredTypes = {
    'Failure',
    'Either',
    'Future',
    'void',
    'dynamic',
    'Object',
    'String',
    'int',
    'bool',
    'double',
    'num',
    'List',
    'Map',
    'Set',
    'Record',
    'Null',
    'Never',
  };

  ParsedRepository parse(String filePath, String targetClassName) {
    final file = File(filePath);
    if (!file.existsSync()) {
      throw Exception('File tidak ditemukan: $filePath');
    }

    final content = file.readAsStringSync();
    final result = parseString(content: content);
    final unit = result.unit;

    final parsedImports = <ParsedImport>[];
    String? repoName;
    final methods = <ParsedMethod>[];

    for (var directive in unit.directives) {
      if (directive is ImportDirective) {
        parsedImports.add(ParsedImport.fromDirective(directive));
      }
    }

    for (var declaration in unit.declarations) {
      if (declaration is ClassDeclaration &&
          declaration.namePart.typeName.lexeme == targetClassName) {
        repoName = declaration.namePart.typeName.lexeme;

        for (var member in declaration.body.members) {
          if (member is MethodDeclaration) {
            final methodName = member.name.lexeme;
            final returnType = member.returnType?.toSource() ?? 'dynamic';
            final parameters = member.parameters?.toSource() ?? '()';

            final requiredTypes = <String>{};

            if (member.returnType != null) {
              _collectFromTypeAnnotation(member.returnType, requiredTypes);
            }

            if (member.parameters != null) {
              for (var param in member.parameters!.parameters) {
                _collectFromTypeAnnotation(
                  _parameterType(param),
                  requiredTypes,
                );
              }
            }

            final rightType = _extractRightType(returnType);
            final parameterCall = _buildParameterCall(member.parameters);

            methods.add(
              ParsedMethod(
                name: methodName,
                returnType: returnType,
                rightType: rightType,
                parameters: parameters,
                parameterCall: parameterCall,
                requiredTypes: requiredTypes,
              ),
            );
          }
        }
      }
    }

    if (repoName == null) {
      throw Exception('Tidak menemukan class di dalam file $filePath');
    }

    return ParsedRepository(
      name: repoName,
      parsedImports: parsedImports,
      methods: methods,
    );
  }

  static String _buildParameterCall(FormalParameterList? parameterList) {
    if (parameterList == null) {
      return '';
    }

    final args = <String>[];
    for (final param in parameterList.parameters) {
      final name = _formalParameterName(param);
      if (name == null) {
        continue;
      }

      if (param.isNamed) {
        args.add('$name: $name');
      } else {
        args.add(name);
      }
    }

    return args.join(', ');
  }

  static String? _formalParameterName(FormalParameter param) {
    if (param is DefaultFormalParameter) {
      return param.parameter.name?.lexeme;
    }
    return param.name?.lexeme;
  }

  static TypeAnnotation? _parameterType(FormalParameter param) {
    if (param is DefaultFormalParameter) {
      return _parameterTypeFromNormal(param.parameter);
    }
    return _parameterTypeFromNormal(param);
  }

  static TypeAnnotation? _parameterTypeFromNormal(FormalParameter param) {
    if (param is SimpleFormalParameter) {
      return param.type;
    }
    if (param is FieldFormalParameter) {
      return param.type;
    }
    if (param is SuperFormalParameter) {
      return param.type;
    }
    return null;
  }

  static void _collectFromTypeAnnotation(
    TypeAnnotation? annotation,
    Set<String> types,
  ) {
    if (annotation == null) {
      return;
    }
    _visitTypeNode(annotation, types);
  }

  static void _visitTypeNode(AstNode node, Set<String> types) {
    if (node is NamedType) {
      final typeName = node.name.lexeme;
      if (!_ignoredTypes.contains(typeName)) {
        types.add(typeName);
      }

      final typeArgs = node.typeArguments?.arguments;
      if (typeArgs != null) {
        for (final arg in typeArgs) {
          _collectFromTypeAnnotation(arg, types);
        }
      }
    }
  }

  /// Mengekstrak tipe Right dari `Either<Failure, RightType>`
  /// menggunakan bracket-counting agar mendukung nested generics
  /// seperti `Either<Failure, List<UserEntity>>`
  String _extractRightType(String returnType) {
    final eitherIndex = returnType.indexOf('Either<');
    if (eitherIndex == -1) return 'dynamic';

    final start = eitherIndex + 'Either<'.length;
    int depth = 0;
    int commaIndex = -1;

    for (int i = start; i < returnType.length; i++) {
      if (returnType[i] == '<') {
        depth++;
      } else if (returnType[i] == '>') {
        depth--;
      } else if (returnType[i] == ',' && depth == 0) {
        commaIndex = i;
        break;
      }
    }

    if (commaIndex == -1) return 'dynamic';

    int closingIndex = -1;
    depth = 0;
    for (int i = commaIndex + 1; i < returnType.length; i++) {
      if (returnType[i] == '<') {
        depth++;
      } else if (returnType[i] == '>') {
        if (depth == 0) {
          closingIndex = i;
          break;
        }
        depth--;
      }
    }

    if (closingIndex == -1) return 'dynamic';

    return returnType.substring(commaIndex + 1, closingIndex).trim();
  }
}
