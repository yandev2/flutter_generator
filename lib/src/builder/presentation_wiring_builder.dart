import '../core/data_naming.dart';
import '../core/string_extensions.dart';
import '../core/usecase_naming.dart';

/// Membangun provider wiring di lapisan **Presentation** untuk chain:
/// `apiClientProvider` → `authDatasourceProvider` → `authRepositoryProvider` → `{method}UsecaseProvider`
class PresentationWiringBuilder {
  String buildDatasourceProvider({
    required String repositoryName,
  }) {
    final dsClass = datasourceClassName(repositoryName);
    final dsImplClass = datasourceImplClassName(repositoryName);
    final dsFile = datasourceFileName(repositoryName);
    final providerFileName = datasourceProviderFileName(repositoryName);
    final providerFunctionName =
        datasourceProviderFunctionName(repositoryName);

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client_provider.dart';
import '../../data/datasources/$dsFile';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

@Riverpod(keepAlive: true)
$dsClass $providerFunctionName(Ref ref) {
  return $dsImplClass(ref.watch(apiClientProvider));
}
''';
  }

  String buildRepositoryProvider({
    required String repositoryName,
  }) {
    final repoSnake = repositoryName.toSnakeCase();
    final implClassName = repositoryImplClassName(repositoryName);
    final implFileName = repositoryImplFileName(repositoryName);
    final providerFileName =
        '${repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
    final providerFunctionName = repositoryProviderFunctionName(repositoryName);
    final dsProviderFile = datasourceProviderFileName(repositoryName);
    final dsProviderName = '${datasourceProviderFunctionName(repositoryName)}Provider';

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/$implFileName';
import '../../domain/repositories/$repoSnake.dart';
import '$dsProviderFile';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

@Riverpod(keepAlive: true)
$repositoryName $providerFunctionName(Ref ref) {
  return $implClassName(ref.watch($dsProviderName));
}
''';
  }

  String buildUsecaseProvider({
    required String pageName,
    required String repositoryName,
  }) {
    final usecaseClass = usecaseClassName(pageName);
    final usecaseFile = usecaseFileName(pageName);
    final providerBaseName = pageName.toCamelCase();
    final providerFileName = '${pageName.toSnakeCase()}_usecase_provider.dart';
    final repositoryProviderImport =
        '${repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
    final repositoryProviderName =
        '${repositoryProviderFunctionName(repositoryName)}Provider';

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/usecases/$usecaseFile';
import '$repositoryProviderImport';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

@riverpod
$usecaseClass ${providerBaseName}Usecase(Ref ref) {
  return $usecaseClass(
    ref.watch($repositoryProviderName),
  );
}
''';
  }

  static String repositoryProviderFileName(String repositoryName) {
    return '${repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
  }

  static String datasourceProviderFileNameFor(String repositoryName) {
    return datasourceProviderFileName(repositoryName);
  }

  static String usecaseProviderFileName(String pageName) {
    return '${pageName.toSnakeCase()}_usecase_provider.dart';
  }
}
