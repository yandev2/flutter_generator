import 'string_extensions.dart';

const _primitiveTypes = {
  'String',
  'int',
  'bool',
  'double',
  'num',
  'dynamic',
  'Object',
  'void',
  'Null',
  'Never',
};

bool isEntityTypeName(String typeName) {
  return typeName.endsWith('Entity');
}

bool isEntityType(String type) {
  return _containsEntityTypeName(type.trim());
}

bool _containsEntityTypeName(String type) {
  final regex = RegExp(r'\b[A-Za-z_]\w*Entity\b');
  return regex.hasMatch(type);
}

String entityTypeToModelType(String type) {
  return type.replaceAllMapped(
    RegExp(r'\b([A-Za-z_]\w*)Entity\b'),
    (match) => '${match.group(1)}Model',
  );
}

String entityFileNameFromType(String entityTypeName) {
  if (!entityTypeName.endsWith('Entity')) {
    return '${entityTypeName.toSnakeCase()}.dart';
  }
  final base = entityTypeName.substring(0, entityTypeName.length - 6);
  return '${base.toSnakeCase()}_entity.dart';
}

String modelFileNameFromEntityType(String entityTypeName) {
  if (!entityTypeName.endsWith('Entity')) {
    return '${entityTypeName.toSnakeCase()}_model.dart';
  }
  final base = entityTypeName.substring(0, entityTypeName.length - 6);
  return '${base.toSnakeCase()}_model.dart';
}

bool isPrimitiveType(String type) {
  final base = type.replaceAll('?', '').trim();
  if (_primitiveTypes.contains(base)) {
    return true;
  }
  return !isEntityType(type) && !base.contains('<');
}

String endpointForMethod(String methodName) => '/${methodName.toSnakeCase()}';

enum HttpVerb { get, post, delete }

HttpVerb httpVerbForMethod(String methodName) {
  final lower = methodName.toLowerCase();
  if (lower.startsWith('delete')) {
    return HttpVerb.delete;
  }
  if (lower.startsWith('get') ||
      lower.startsWith('fetch') ||
      lower.startsWith('list') ||
      lower.startsWith('auto')) {
    return HttpVerb.get;
  }
  return HttpVerb.post;
}
