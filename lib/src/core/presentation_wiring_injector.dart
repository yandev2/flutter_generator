// ignore_for_file: avoid_print
import 'dart:io';

import '../builder/presentation_wiring_builder.dart';
import '../parser/repository_parser.dart';
import 'data_wiring_injector.dart';
import 'feature_paths.dart';
import 'string_extensions.dart';

/// Meng-inject provider wiring ke `lib/features/<feature>/presentation/providers/`.
class PresentationWiringInjector {
  final String projectRoot;
  final DataWiringInjector _dataWiring;

  PresentationWiringInjector(
    this.projectRoot, {
    PresentationWiringBuilder? builder,
    DataWiringInjector? dataWiring,
  }) : _dataWiring = dataWiring ??
            DataWiringInjector(
              projectRoot,
              builder: builder,
            );

  void inject({
    required String featureName,
    required String pageName,
    required String repositoryName,
    required List<ParsedMethod> methods,
  }) {
    final method = _findMethod(methods, pageName);
    if (method == null) {
      print(
        '❌ Method "$pageName" tidak ditemukan di $repositoryName. '
        'Method tersedia: ${_methodNames(methods).join(', ')}',
      );
      return;
    }

    final featureDir = featureName.toSnakeCase();
    final providersDir = Directory(
      '$projectRoot/${FeaturePaths.presentationProviders(featureDir)}',
    );
    if (!providersDir.existsSync()) {
      providersDir.createSync(recursive: true);
      print('ℹ️ Dibuat folder: ${providersDir.path}');
    }

    _dataWiring.injectAll(
      featureName: featureDir,
      repositoryName: repositoryName,
      methods: methods,
    );
    _patchPageProviderIfExists(
      providersDir: providersDir,
      pageName: pageName,
    );

    print('✅ Auto-wiring selesai untuk page "${pageName.toSnakeCase()}".');
  }

  ParsedMethod? _findMethod(List<ParsedMethod> methods, String pageName) {
    final normalizedPage = pageName.toSnakeCase();
    for (final method in methods) {
      if (method.name.toSnakeCase() == normalizedPage) {
        return method;
      }
    }
    return null;
  }

  List<String> _methodNames(List<ParsedMethod> methods) {
    return methods.map((method) => method.name.toSnakeCase()).toList();
  }

  void _patchPageProviderIfExists({
    required Directory providersDir,
    required String pageName,
  }) {
    final pageProviderFile =
        File('${providersDir.path}/${pageName.toSnakeCase()}_provider.dart');
    if (!pageProviderFile.existsSync()) {
      print(
        'ℹ️ ${pageProviderFile.path} belum ada. '
        'Jalankan gen_page untuk membuat Notifier page.',
      );
      return;
    }

    var content = pageProviderFile.readAsStringSync();
    final usecaseProviderImport =
        "import '${pageName.toSnakeCase()}_usecase_provider.dart';";
    final usecaseProviderName = '${pageName.toCamelCase()}UsecaseProvider';

    if (!content.contains(usecaseProviderImport)) {
      final lastImportIndex = content.lastIndexOf('import ');
      if (lastImportIndex != -1) {
        final endOfLastImport = content.indexOf(';', lastImportIndex) + 1;
        content =
            '${content.substring(0, endOfLastImport)}\n$usecaseProviderImport${content.substring(endOfLastImport)}';
      } else {
        content = '$usecaseProviderImport\n$content';
      }
    }

    const todoMarker = '// TODO: Implement';
    if (content.contains(todoMarker)) {
      content = content.replaceFirst(
        todoMarker,
        '// Contoh pemanggilan usecase:\n'
        '  // final usecase = ref.read($usecaseProviderName);\n'
        '  // await usecase(/* sesuaikan parameter */);\n'
        '  // TODO: Implement',
      );
    }

    pageProviderFile.writeAsStringSync(content);
    print('🔗 Linked: ${pageProviderFile.path} → $usecaseProviderName');
  }
}
