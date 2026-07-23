import '../parser/repository_parser.dart';
import 'import_resolver.dart';
import 'type_mapping.dart';

/// Resolves imports for data layer files from repository parsed imports.
class DataImportResolver {
  static List<String> entityImports({
    required ParsedRepository repository,
    required Set<String> entityTypeNames,
    required String repositoryFilePath,
    required String targetFilePath,
  }) {
    if (entityTypeNames.isEmpty) {
      return const [];
    }

    return ImportResolver.resolve(
      repository: repository,
      method: ParsedMethod(
        name: '_',
        returnType: '',
        rightType: '',
        parameters: '',
        parameterCall: '',
        requiredTypes: entityTypeNames,
      ),
      repositoryFilePath: repositoryFilePath,
      usecaseFilePath: targetFilePath,
    );
  }

  static List<String> modelImports({
    required Set<String> entityTypeNames,
    String modelRelativePrefix = '../models/',
  }) {
    if (entityTypeNames.isEmpty) {
      return const [];
    }

    final imports = entityTypeNames
        .map(
          (entityType) =>
              "import '$modelRelativePrefix${modelFileNameFromEntityType(entityType)}';",
        )
        .toSet()
        .toList()
      ..sort();
    return imports;
  }

  static Set<String> collectEntityTypesForMethod(ParsedMethod method) {
    return method.requiredTypes.where(isEntityTypeName).toSet();
  }

  static Set<String> collectAllEntityTypes(ParsedRepository repository) {
    final types = <String>{};
    for (final method in repository.methods) {
      types.addAll(collectEntityTypesForMethod(method));
    }
    return types;
  }
}
