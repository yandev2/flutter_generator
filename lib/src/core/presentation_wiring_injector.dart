// ignore_for_file: avoid_print
import 'dart:io';

import '../builder/presentation_wiring_builder.dart';
import '../parser/repository_parser.dart';
import 'build_runner_reminder.dart';
import 'string_extensions.dart';

/// Meng-inject provider wiring ke `lib/presentation/<feature>/providers/`.
class PresentationWiringInjector {
  final String projectRoot;
  final PresentationWiringBuilder _builder;

  PresentationWiringInjector(
    this.projectRoot, {
    PresentationWiringBuilder? builder,
  }) : _builder = builder ?? PresentationWiringBuilder();

  /// Wire usecase provider (+ repository provider jika belum ada) untuk [pageName].
  ///
  /// [pageName] harus cocok dengan nama method di repository (mis. method `login`
  /// → page `login`).
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
    final providersDir =
        Directory('$projectRoot/lib/presentation/$featureDir/providers');
    if (!providersDir.existsSync()) {
      providersDir.createSync(recursive: true);
      print('ℹ️ Dibuat folder: ${providersDir.path}');
    }

    _writeRepositoryProvider(providersDir, repositoryName);
    _writeUsecaseProvider(
      providersDir: providersDir,
      pageName: pageName,
      repositoryName: repositoryName,
    );
    _patchPageProviderIfExists(
      providersDir: providersDir,
      pageName: pageName,
    );

    print('✅ Auto-wiring selesai untuk page "${pageName.toSnakeCase()}".');
    printBuildRunnerReminder();
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

  void _writeRepositoryProvider(Directory providersDir, String repositoryName) {
    final fileName =
        PresentationWiringBuilder.repositoryProviderFileName(repositoryName);
    final file = File('${providersDir.path}/$fileName');

    if (file.existsSync()) {
      print('⚠️ Skip: ${file.path} sudah ada.');
      return;
    }

    file.writeAsStringSync(_builder.buildRepositoryProvider(repositoryName));
    print('✅ Generated: ${file.path}');
  }

  void _writeUsecaseProvider({
    required Directory providersDir,
    required String pageName,
    required String repositoryName,
  }) {
    final fileName = PresentationWiringBuilder.usecaseProviderFileName(pageName);
    final file = File('${providersDir.path}/$fileName');
    final usecaseFolderName =
        PresentationWiringBuilder.usecaseFolderNameFromRepository(repositoryName);

    final content = _builder.buildUsecaseProvider(
      pageName: pageName,
      repositoryName: repositoryName,
      usecaseFolderName: usecaseFolderName,
    );

    if (file.existsSync()) {
      file.writeAsStringSync(content);
      print('🔄 Updated: ${file.path}');
      return;
    }

    file.writeAsStringSync(content);
    print('✅ Generated: ${file.path}');
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
