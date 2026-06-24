import '../core/models.dart';
import '../core/string_extensions.dart';

class JsonParser {
  final List<ClassDefinition> classes = [];

  List<ClassDefinition> parse(String rootClassName, Map<String, dynamic> jsonMap) {
    classes.clear();
    _parseObject(rootClassName.toPascalCase(), jsonMap);
    return classes.reversed.toList(); // Reverse so nested classes are generated first or just return as is
  }

  String _parseObject(String className, Map<String, dynamic> jsonMap) {
    final fields = <FieldDefinition>[];

    jsonMap.forEach((key, value) {
      final dartName = key.toCamelCase();
      final type = _inferType(key, value);
      fields.add(FieldDefinition(
        originalName: key,
        dartName: dartName,
        type: type,
      ));
    });

    classes.add(ClassDefinition(name: className, fields: fields));
    return className;
  }

  String _inferType(String key, dynamic value) {
    if (value == null) {
      return 'dynamic';
    } else if (value is String) {
      return 'String';
    } else if (value is int) {
      return 'int';
    } else if (value is double) {
      return 'double';
    } else if (value is bool) {
      return 'bool';
    } else if (value is List) {
      if (value.isEmpty) {
        return 'List<dynamic>';
      }
      final firstElement = value.first;
      final elementType = _inferType(key, firstElement);
      return 'List<$elementType>';
    } else if (value is Map<String, dynamic>) {
      // It's a nested object, we need to create a new class for it
      final nestedClassName = key.toPascalCase();
      return _parseObject(nestedClassName, value);
    }
    return 'dynamic';
  }
}
