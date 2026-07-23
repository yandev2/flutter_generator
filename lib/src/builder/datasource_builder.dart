import '../core/data_import_resolver.dart';
import '../core/data_naming.dart';
import '../core/string_extensions.dart';
import '../core/type_mapping.dart';
import '../parser/repository_parser.dart';

class DatasourceBuilder {
  String build({
    required ParsedRepository repository,
  }) {
    final buffer = StringBuffer();
    final dsClass = datasourceClassName(repository.name);
    final dsImplClass = datasourceImplClassName(repository.name);
    final entityTypes = DataImportResolver.collectAllEntityTypes(repository);

    buffer.writeln("import '../../../../core/network/api_client.dart';");
    for (final importLine in DataImportResolver.modelImports(
      entityTypeNames: entityTypes,
    )) {
      buffer.writeln(importLine);
    }
    buffer.writeln();
    buffer.writeln('abstract class $dsClass {');
    for (final method in repository.methods) {
      buffer.writeln(
        '  Future<${entityTypeToModelType(method.rightType)}> '
        '${method.name}${_datasourceParameters(method)};',
      );
    }
    buffer.writeln('}');
    buffer.writeln();
    buffer.writeln('class $dsImplClass extends $dsClass {');
    buffer.writeln('  final ApiClient _client;');
    buffer.writeln();
    buffer.writeln('  $dsImplClass(this._client);');
    buffer.writeln();

    for (final method in repository.methods) {
      buffer.write(_buildMethod(method));
    }

    buffer.writeln('}');
    return buffer.toString();
  }

  String _datasourceParameters(ParsedMethod method) {
    if (method.parsedParameters.isEmpty) {
      return '()';
    }

    final positional = method.parsedParameters.where((p) => !p.isNamed).toList();
    final named = method.parsedParameters.where((p) => p.isNamed).toList();

    final parts = <String>[];
    for (final param in positional) {
      parts.add('${entityTypeToModelType(param.type)} ${param.name}');
    }

    if (named.isEmpty) {
      return '(${parts.join(', ')})';
    }

    final namedPart = named
        .map((p) => '${entityTypeToModelType(p.type)} ${p.name}')
        .join(', ');

    if (parts.isEmpty) {
      return '({$namedPart})';
    }

    return '(${parts.join(', ')}, {$namedPart})';
  }

  String _buildMethod(ParsedMethod method) {
    final buffer = StringBuffer();
    final returnType = entityTypeToModelType(method.rightType);
    final endpoint = endpointForMethod(method.name);
    final verb = httpVerbForMethod(method.name);

    buffer.writeln('  @override');
    buffer.writeln(
      '  Future<$returnType> ${method.name}${_datasourceParameters(method)} async {',
    );

    switch (verb) {
      case HttpVerb.get:
        _writeGetCall(buffer, method, endpoint);
      case HttpVerb.delete:
        buffer.writeln("    final response = await _client.delete('$endpoint');");
        _writeReturn(buffer, method);
      case HttpVerb.post:
        _writePostCall(buffer, method, endpoint);
    }

    buffer.writeln('  }');
    buffer.writeln();
    return buffer.toString();
  }

  void _writeGetCall(StringBuffer buffer, ParsedMethod method, String endpoint) {
    if (method.parsedParameters.isEmpty) {
      buffer.writeln("    final response = await _client.get('$endpoint');");
    } else {
      buffer.writeln('    final Map<String, dynamic> query = {');
      for (final param in method.parsedParameters) {
        buffer.writeln("      '${param.name.toSnakeCase()}': ${param.name},");
      }
      buffer.writeln('    };');
      buffer.writeln(
        "    final response = await _client.get('$endpoint', query: query);",
      );
    }
    _writeReturn(buffer, method);
  }

  void _writePostCall(StringBuffer buffer, ParsedMethod method, String endpoint) {
    if (method.parsedParameters.isEmpty) {
      buffer.writeln("    final response = await _client.post('$endpoint');");
      _writeReturn(buffer, method);
      return;
    }

    if (method.parsedParameters.length == 1 &&
        _isEntityParam(method.parsedParameters.first)) {
      final param = method.parsedParameters.first;
      buffer.writeln(
        "    final response = await _client.post('$endpoint', body: ${param.name}.toJson());",
      );
    } else if (method.parsedParameters.length == 1) {
      final param = method.parsedParameters.first;
      buffer.writeln("    final response = await _client.post(");
      buffer.writeln("      '$endpoint',");
      buffer.writeln(
        "      body: {'${param.name.toSnakeCase()}': ${param.name}},",
      );
      buffer.writeln('    );');
    } else {
      buffer.writeln("    final response = await _client.post(");
      buffer.writeln("      '$endpoint',");
      buffer.writeln('      body: {');
      for (final param in method.parsedParameters) {
        if (_isEntityParam(param)) {
          buffer.writeln('        ...${param.name}.toJson(),');
        } else {
          buffer.writeln(
            "        '${param.name.toSnakeCase()}': ${param.name},",
          );
        }
      }
      buffer.writeln('      },');
      buffer.writeln('    );');
    }

    if (method.name == 'login' && isEntityType(method.rightType)) {
      final modelType = entityTypeToModelType(method.rightType);
      buffer.writeln("    final user = $modelType.fromJson(response['data']);");
      buffer.writeln('    if (user.token != null) {');
      buffer.writeln('      _client.setToken(user.token!);');
      buffer.writeln('    }');
      buffer.writeln('    return user;');
      return;
    }

    _writeReturn(buffer, method);
  }

  void _writeReturn(StringBuffer buffer, ParsedMethod method) {
    if (isEntityType(method.rightType)) {
      final modelType = entityTypeToModelType(method.rightType);
      buffer.writeln("    return $modelType.fromJson(response['data']);");
      return;
    }

    final rightType = method.rightType;
    if (rightType == 'bool') {
      buffer.writeln("    return response['data'] as bool;");
    } else if (rightType == 'String?' || rightType == 'String') {
      buffer.writeln("    return response['data'] as String?;");
    } else if (rightType == 'int' || rightType == 'int?') {
      buffer.writeln("    return response['data'] as int?;");
    } else {
      buffer.writeln("    return response['data'] as $rightType;");
    }
  }

  bool _isEntityParam(ParsedParameter param) => param.type.contains('Entity');
}
