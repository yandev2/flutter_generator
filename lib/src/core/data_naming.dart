import 'string_extensions.dart';

String repositoryBaseName(String repositoryName) {
  return repositoryName
      .replaceAll(RegExp(r'Repository$', caseSensitive: false), '')
      .toPascalCase();
}

String datasourceClassName(String repositoryName) =>
    '${repositoryBaseName(repositoryName)}Datasource';

String datasourceImplClassName(String repositoryName) =>
    '${datasourceClassName(repositoryName)}Impl';

String datasourceFileName(String repositoryName) =>
    '${repositoryBaseName(repositoryName).toSnakeCase()}_datasource.dart';

String repositoryImplClassName(String repositoryName) =>
    '${repositoryName}Impl';

String repositoryImplFileName(String repositoryName) =>
    '${repositoryName.toSnakeCase()}_impl.dart';

String datasourceProviderFileName(String repositoryName) =>
    '${repositoryBaseName(repositoryName).toSnakeCase()}_datasource_provider.dart';

String datasourceProviderFunctionName(String repositoryName) {
  final base = repositoryBaseName(repositoryName);
  if (base.isEmpty) return base;
  return '${base[0].toLowerCase()}${base.substring(1)}Datasource';
}

String repositoryProviderBaseName(String repositoryName) {
  return repositoryBaseName(repositoryName).toSnakeCase();
}

String repositoryProviderFunctionName(String repositoryName) {
  if (repositoryName.isEmpty) return repositoryName;
  return repositoryName[0].toLowerCase() + repositoryName.substring(1);
}
