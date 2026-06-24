import '../core/models.dart';
import '../core/string_extensions.dart';

class EntityBuilder {
  String build(ClassDefinition definition) {
    final buffer = StringBuffer();
    final className = '${definition.name}Entity';
    final fileName = '${definition.name.toSnakeCase()}_entity';

    buffer.writeln(
        "import 'package:freezed_annotation/freezed_annotation.dart';");

    // We also need to import nested entities if there are any
    final nestedTypes = definition.fields
        .where((f) => !_isPrimitiveOrPrimitiveList(f.type))
        .map((f) => '${_extractBaseType(f.type).toSnakeCase()}_entity.dart')
        .toSet();

    for (var import in nestedTypes) {
      if (import != '$fileName.dart') {
        buffer.writeln("import '$import';");
      }
    }

    buffer.writeln();
    buffer.writeln("part '$fileName.freezed.dart';");
    buffer.writeln("part '$fileName.g.dart';");
    buffer.writeln();
    buffer.writeln("@Freezed()");
    buffer.writeln("abstract class $className with _\$$className {");
    buffer.writeln("  const factory $className({");

    for (var field in definition.fields) {
      final type = _mapTypeToEntity(field.type);
      buffer.writeln("    $type? ${field.dartName},");
    }

    buffer.writeln("  }) = _$className;");
    buffer.writeln();
    buffer.writeln(
        "  factory $className.fromJson(Map<String, dynamic> json) => _\$${className}FromJson(json);");
    buffer.writeln("}");

    return buffer.toString();
  }

  bool _isPrimitiveOrPrimitiveList(String type) {
    const primitives = ['String', 'int', 'double', 'bool', 'dynamic'];
    if (primitives.contains(type)) return true;
    if (type.startsWith('List<')) {
      final innerType = _extractBaseType(type);
      return primitives.contains(innerType);
    }
    return false;
  }

  String _extractBaseType(String type) {
    if (type.startsWith('List<')) {
      return type.substring(5, type.length - 1);
    }
    return type;
  }

  String _mapTypeToEntity(String type) {
    if (_isPrimitiveOrPrimitiveList(type)) {
      return type;
    }
    if (type.startsWith('List<')) {
      final innerType = _extractBaseType(type);
      return 'List<${innerType}Entity>';
    }
    return '${type}Entity';
  }
}
