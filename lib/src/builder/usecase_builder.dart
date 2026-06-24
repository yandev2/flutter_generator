import '../parser/repository_parser.dart';
import '../core/string_extensions.dart';

class UsecaseBuilder {
  String build(ParsedRepository repository, ParsedMethod method) {
    final buffer = StringBuffer();
    final usecaseName = '${method.name.toPascalCase()}Usecase';

    // Tulis ulang semua import dari repository asalnya
    for (var importLine in repository.imports) {
      buffer.writeln(importLine);
    }

    // Import repository aslinya.
    final repoFileName = '${repository.name.toSnakeCase()}.dart';
    buffer.writeln("import '../../repository/$repoFileName';");
    buffer.writeln();

    buffer.writeln("class $usecaseName {");
    buffer.writeln("  final ${repository.name} repository;");
    buffer.writeln();
    buffer.writeln("  $usecaseName(this.repository);");
    buffer.writeln();

    final paramsDef = method.parameters; // sudah memiliki ()

    buffer.writeln(
        "  Future<${method.rightType}> call$paramsDef async {");
    buffer.writeln(
        "    final result = await repository.${method.name}(${method.parameterNames});");
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
