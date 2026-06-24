class FieldDefinition {
  final String originalName;
  final String dartName; // camelCase
  final String type; // e.g., String, int, List<String>, MyNestedClass

  FieldDefinition({
    required this.originalName,
    required this.dartName,
    required this.type,
  });
}

class ClassDefinition {
  final String name; // PascalCase
  final List<FieldDefinition> fields;

  ClassDefinition({
    required this.name,
    required this.fields,
  });
}
