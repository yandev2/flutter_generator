import 'dart:io';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';

class ParsedMethod {
  final String name;
  final String returnType;
  final String rightType; // Tipe data kesuksesan (Right side of Either)
  final String parameters; // e.g. "(AuthEntity data)"
  final String parameterNames; // e.g. "data"

  ParsedMethod({
    required this.name,
    required this.returnType,
    required this.rightType,
    required this.parameters,
    required this.parameterNames,
  });
}

class ParsedRepository {
  final String name;
  final List<String> imports;
  final List<ParsedMethod> methods;

  ParsedRepository({
    required this.name,
    required this.imports,
    required this.methods,
  });
}

class RepositoryParser {
  ParsedRepository parse(String filePath, String targetClassName) {
    final file = File(filePath);
    if (!file.existsSync()) {
      throw Exception('File tidak ditemukan: $filePath');
    }

    final content = file.readAsStringSync();
    final result = parseString(content: content);
    final unit = result.unit;

    final imports = <String>[];
    String? repoName;
    final methods = <ParsedMethod>[];

    for (var directive in unit.directives) {
      if (directive is ImportDirective) {
        imports.add(directive.toSource());
      }
    }

    for (var declaration in unit.declarations) {
      if (declaration is ClassDeclaration &&
          declaration.name.lexeme == targetClassName) {
        repoName = declaration.name.lexeme;

        for (var member in declaration.members) {
          if (member is MethodDeclaration) {
            final methodName = member.name.lexeme;
            final returnType = member.returnType?.toSource() ?? 'dynamic';
            final parameters = member.parameters?.toSource() ?? '()';

            // Ekstrak parameter names untuk passing
            final paramNamesList = <String>[];
            if (member.parameters != null) {
              for (var param in member.parameters!.parameters) {
                if (param.name != null) {
                  paramNamesList.add(param.name!.lexeme);
                }
              }
            }
            final paramNames = paramNamesList.join(', ');

            // Ekstrak RightType dari Either<Failure, RightType>
            String rightType = _extractRightType(returnType);

            methods.add(
              ParsedMethod(
                name: methodName,
                returnType: returnType,
                rightType: rightType,
                parameters: parameters,
                parameterNames: paramNames,
              ),
            );
          }
        }
      }
    }

    if (repoName == null) {
      throw Exception('Tidak menemukan class di dalam file $filePath');
    }

    return ParsedRepository(name: repoName, imports: imports, methods: methods);
  }

  /// Mengekstrak tipe Right dari `Either<Failure, RightType>`
  /// menggunakan bracket-counting agar mendukung nested generics
  /// seperti `Either<Failure, List<UserEntity>>`
  String _extractRightType(String returnType) {
    // Cari posisi 'Either<' di dalam returnType
    final eitherIndex = returnType.indexOf('Either<');
    if (eitherIndex == -1) return 'dynamic';

    // Mulai dari setelah 'Either<'
    final start = eitherIndex + 'Either<'.length;
    int depth = 0;
    int commaIndex = -1;

    // Cari posisi koma pemisah antara Left dan Right type
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

    // Cari posisi '>' penutup terakhir dari Either
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
