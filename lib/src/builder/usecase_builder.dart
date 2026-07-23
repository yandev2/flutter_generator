import '../core/usecase_naming.dart';
import '../parser/repository_parser.dart';
import '../core/import_resolver.dart';
import '../core/string_extensions.dart';

class UsecaseBuilder {
  String build(
    ParsedRepository repository,
    ParsedMethod method, {
    required String repositoryFilePath,
    required String usecaseFilePath,
  }) {
    final buffer = StringBuffer();
    final usecaseName = usecaseClassName(method.name);

    final imports = ImportResolver.resolve(
      repository: repository,
      method: method,
      repositoryFilePath: repositoryFilePath,
      usecaseFilePath: usecaseFilePath,
    );

    for (final importLine in imports) {
      buffer.writeln(importLine);
    }

    final repoFileName = '${repository.name.toSnakeCase()}.dart';
    buffer.writeln("import '../repositories/$repoFileName';");
    buffer.writeln();

    buffer.writeln("class $usecaseName {");
    buffer.writeln("  final ${repository.name} repository;");
    buffer.writeln();
    buffer.writeln("  $usecaseName(this.repository);");
    buffer.writeln();

    final paramsDef = method.parameters;

    buffer.writeln(
        "  Future<${method.rightType}> call$paramsDef async {");
    buffer.writeln(
        "    final result = await repository.${method.name}(${method.parameterCall});");
    buffer.writeln();
    buffer.writeln("    return result.fold(");
    buffer.writeln(
        "      (failure) => throw Exception(failure.message),");
    buffer.writeln("      (data) => data,");
    buffer.writeln("    );");
    buffer.writeln("  }");
    buffer.writeln("}");

    return buffer.toString();
  }
}
