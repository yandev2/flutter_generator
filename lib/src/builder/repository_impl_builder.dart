import '../core/string_extensions.dart';
import '../core/data_import_resolver.dart';
import '../core/data_naming.dart';
import '../core/type_mapping.dart';
import '../parser/repository_parser.dart';

class RepositoryImplBuilder {
  String build({
    required ParsedRepository repository,
    required String repositoryFilePath,
    required String repositoryImplFilePath,
  }) {
    final buffer = StringBuffer();
    final implClass = repositoryImplClassName(repository.name);
    final dsClass = datasourceClassName(repository.name);
    final repoSnake = repository.name.toSnakeCase();
    final dsFile = datasourceFileName(repository.name);
    final entityTypes = DataImportResolver.collectAllEntityTypes(repository);

    buffer.writeln("import 'package:dartz/dartz.dart';");
    buffer.writeln();
    buffer.writeln("import '../../../../core/errors/exceptions.dart';");
    buffer.writeln("import '../../../../core/errors/failures.dart';");
    buffer.writeln("import '../../domain/repositories/$repoSnake.dart';");
    buffer.writeln("import '../datasources/$dsFile';");
    for (final importLine in DataImportResolver.entityImports(
      repository: repository,
      entityTypeNames: entityTypes,
      repositoryFilePath: repositoryFilePath,
      targetFilePath: repositoryImplFilePath,
    )) {
      buffer.writeln(importLine);
    }
    for (final importLine in DataImportResolver.modelImports(
      entityTypeNames: entityTypes,
    )) {
      buffer.writeln(importLine);
    }
    buffer.writeln();
    buffer.writeln('class $implClass implements ${repository.name} {');
    buffer.writeln('  final $dsClass _datasource;');
    buffer.writeln();
    buffer.writeln('  $implClass(this._datasource);');
    buffer.writeln();

    for (final method in repository.methods) {
      buffer.write(_buildMethod(method, dsClass));
    }

    buffer.writeln('}');
    return buffer.toString();
  }

  String _buildMethod(ParsedMethod method, String dsClass) {
    final buffer = StringBuffer();
    final datasourceArgs = _datasourceCallArgs(method);

    buffer.writeln('  @override');
    buffer.writeln('  ${method.returnType} ${method.name}${method.parameters} async {');
    buffer.writeln('    try {');
    buffer.writeln(
      '      final result = await _datasource.${method.name}($datasourceArgs);',
    );
    buffer.writeln(_successReturn(method));
    buffer.writeln('    } on UnauthorizedException catch (e) {');
    buffer.writeln('      return Left(Failure.unauthorized(message: e.message));');
    buffer.writeln('    } on NetworkException catch (e) {');
    buffer.writeln('      return Left(Failure.network(message: e.message));');
    buffer.writeln('    } on ServerException catch (e) {');
    buffer.writeln(
      '      return Left(Failure.server(message: e.message, statusCode: e.statusCode));',
    );
    buffer.writeln('    } on RequestTimeoutException catch (e) {');
    buffer.writeln('      return Left(Failure.timeout(message: e.message));');
    buffer.writeln('    } catch (e) {');
    buffer.writeln('      return Left(Failure.unexpected(message: e.toString()));');
    buffer.writeln('    }');
    buffer.writeln('  }');
    buffer.writeln();
    return buffer.toString();
  }

  String _datasourceCallArgs(ParsedMethod method) {
    if (method.parsedParameters.isEmpty) {
      return '';
    }

    return method.parsedParameters.map((param) {
      final value = _isEntityParam(param)
          ? '${entityTypeToModelType(param.type)}.fromEntity(${param.name})'
          : param.name;
      if (param.isNamed) {
        return '${param.name}: $value';
      }
      return value;
    }).join(', ');
  }

  String _successReturn(ParsedMethod method) {
    if (isEntityType(method.rightType)) {
      return '      return Right(result.toEntity());';
    }
    return '      return Right(result);';
  }

  bool _isEntityParam(ParsedParameter param) => param.type.contains('Entity');
}
