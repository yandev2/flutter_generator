import '../core/models.dart';
import '../core/string_extensions.dart';

class ModelBuilder {
  String build(ClassDefinition definition) {
    final buffer = StringBuffer();
    final className = '${definition.name}Model';
    final entityClassName = '${definition.name}Entity';
    final entityFileName = '${definition.name.toSnakeCase()}_entity.dart';

    // Import entity
    buffer.writeln("import '../../domain/entities/$entityFileName';");

    // We also need to import nested models and entities if there are any
    final nestedTypes = definition.fields
        .where((f) => !_isPrimitiveOrPrimitiveList(f.type))
        .map((f) => _extractBaseType(f.type).toSnakeCase())
        .toSet();

    for (var typeName in nestedTypes) {
      if (typeName != definition.name.toSnakeCase()) {
        buffer.writeln("import '${typeName}_model.dart';");
        buffer.writeln("import '../../domain/entities/${typeName}_entity.dart';");
      }
    }
    buffer.writeln();

    buffer.writeln("class $className {");

    // Properties
    for (var field in definition.fields) {
      final type = _mapTypeToModel(field.type);
      buffer.writeln("  $type? ${field.dartName};");
    }
    buffer.writeln();

    // Constructor
    buffer.write("  $className({");
    for (var field in definition.fields) {
      buffer.write("this.${field.dartName}, ");
    }
    buffer.writeln("});");
    buffer.writeln();

    // fromJson
    buffer.writeln(
        "  factory $className.fromJson(Map<String, dynamic> json) {");
    buffer.writeln("    return $className(");
    for (var field in definition.fields) {
      final type = _mapTypeToModel(field.type);
      if (_isPrimitiveOrPrimitiveList(field.type)) {
        if (field.type.startsWith('List<')) {
          final innerType = _extractBaseType(field.type);
          buffer.writeln(
              "      ${field.dartName}: (json['${field.originalName}'] as List?)?.map((e) => e as $innerType).toList(),");
        } else {
          buffer.writeln(
              "      ${field.dartName}: json['${field.originalName}'] as $type?,");
        }
      } else {
        if (field.type.startsWith('List<')) {
          final innerType = _extractBaseType(field.type);
          buffer.writeln(
              "      ${field.dartName}: (json['${field.originalName}'] as List?)?.map((e) => ${innerType}Model.fromJson(e as Map<String, dynamic>)).toList(),");
        } else {
          buffer.writeln(
              "      ${field.dartName}: json['${field.originalName}'] != null ? ${field.type}Model.fromJson(json['${field.originalName}'] as Map<String, dynamic>) : null,");
        }
      }
    }
    buffer.writeln("    );");
    buffer.writeln("  }");
    buffer.writeln();

    // toJson
    buffer.writeln("  Map<String, dynamic> toJson() {");
    buffer.writeln("    return {");
    for (var field in definition.fields) {
      if (_isPrimitiveOrPrimitiveList(field.type)) {
        buffer.writeln(
            "      '${field.originalName}': ${field.dartName},");
      } else {
        if (field.type.startsWith('List<')) {
          buffer.writeln(
              "      '${field.originalName}': ${field.dartName}?.map((e) => e.toJson()).toList(),");
        } else {
          buffer.writeln(
              "      '${field.originalName}': ${field.dartName}?.toJson(),");
        }
      }
    }
    buffer.writeln("    };");
    buffer.writeln("  }");
    buffer.writeln();

    // fromEntity
    buffer.writeln(
        "  factory $className.fromEntity($entityClassName entity) {");
    buffer.writeln("    return $className(");
    for (var field in definition.fields) {
      if (_isPrimitiveOrPrimitiveList(field.type)) {
        buffer.writeln(
            "      ${field.dartName}: entity.${field.dartName},");
      } else {
        if (field.type.startsWith('List<')) {
          final innerType = _extractBaseType(field.type);
          buffer.writeln(
              "      ${field.dartName}: entity.${field.dartName}?.map((e) => ${innerType}Model.fromEntity(e)).toList(),");
        } else {
          buffer.writeln(
              "      ${field.dartName}: entity.${field.dartName} != null ? ${field.type}Model.fromEntity(entity.${field.dartName}!) : null,");
        }
      }
    }
    buffer.writeln("    );");
    buffer.writeln("  }");
    buffer.writeln();

    // toEntity
    buffer.writeln("  $entityClassName toEntity() {");
    buffer.writeln("    return $entityClassName(");
    for (var field in definition.fields) {
      if (_isPrimitiveOrPrimitiveList(field.type)) {
        buffer.writeln(
            "      ${field.dartName}: ${field.dartName},");
      } else {
        if (field.type.startsWith('List<')) {
          buffer.writeln(
              "      ${field.dartName}: ${field.dartName}?.map((e) => e.toEntity()).toList(),");
        } else {
          buffer.writeln(
              "      ${field.dartName}: ${field.dartName}?.toEntity(),");
        }
      }
    }
    buffer.writeln("    );");
    buffer.writeln("  }");
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

  String _mapTypeToModel(String type) {
    if (_isPrimitiveOrPrimitiveList(type)) {
      return type;
    }
    if (type.startsWith('List<')) {
      final innerType = _extractBaseType(type);
      return 'List<${innerType}Model>';
    }
    return '${type}Model';
  }
}
