import '../core/string_extensions.dart';

/// Membangun provider wiring di lapisan **Presentation** untuk chain:
/// `apiClientProvider` → `authRepositoryProvider` → `loginUsecaseProvider`
///
/// Domain & Data tetap pure Dart — file ini hanya composition/wiring.
class PresentationWiringBuilder {
  /// Provider repository per fitur, mis. `auth_repository_provider.dart`.
  String buildRepositoryProvider(String repositoryName) {
    final repoSnake = repositoryName.toSnakeCase();
    final implClassName = '${repositoryName}Impl';
    final implFileName = '${repoSnake}_impl.dart';
    final providerFileName =
        '${_repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
    final providerFunctionName =
        _repositoryProviderFunctionName(repositoryName);

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/api_client_provider.dart';
import '../../../data/repository_impl/$implFileName';
import '../../../domain/repository/$repoSnake.dart';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

/// Wiring [$repositoryName] ke implementasi data layer.
/// Domain/Data tetap pure Dart — provider hanya composition.
@Riverpod(keepAlive: true)
$repositoryName $providerFunctionName(Ref ref) {
  return $implClassName(
    apiClient: ref.watch(apiClientProvider),
  );
}
''';
  }

  /// Provider usecase per page, mis. `login_usecase_provider.dart`.
  String buildUsecaseProvider({
    required String pageName,
    required String repositoryName,
    required String usecaseFolderName,
  }) {
    final usecaseClassName = '${pageName.toPascalCase()}Usecase';
    final usecaseFileName = '${pageName.toSnakeCase()}_usecase.dart';
    final providerBaseName = pageName.toCamelCase();
    final providerFileName = '${pageName.toSnakeCase()}_usecase_provider.dart';
    final repositoryProviderImport =
        '${_repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
    final repositoryProviderName =
        '${_repositoryProviderFunctionName(repositoryName)}Provider';

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecase/$usecaseFolderName/$usecaseFileName';
import '$repositoryProviderImport';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

/// Wiring [$usecaseClassName] ke [$repositoryName].
@riverpod
$usecaseClassName ${providerBaseName}Usecase(Ref ref) {
  return $usecaseClassName(
    ref.watch($repositoryProviderName),
  );
}
''';
  }

  static String repositoryProviderFileName(String repositoryName) {
    return '${_repositoryProviderBaseName(repositoryName)}_repository_provider.dart';
  }

  static String usecaseProviderFileName(String pageName) {
    return '${pageName.toSnakeCase()}_usecase_provider.dart';
  }

  static String usecaseFolderNameFromRepository(String repositoryName) {
    final baseName =
        repositoryName.replaceAll(RegExp(r'Repository$', caseSensitive: false), '');
    return '${baseName.toSnakeCase()}_usecase';
  }

  static String _repositoryProviderBaseName(String repositoryName) {
    final baseName =
        repositoryName.replaceAll(RegExp(r'Repository$', caseSensitive: false), '');
    return baseName.toSnakeCase();
  }

  static String _repositoryProviderFunctionName(String repositoryName) {
    if (repositoryName.isEmpty) {
      return repositoryName;
    }
    return repositoryName[0].toLowerCase() + repositoryName.substring(1);
  }
}
