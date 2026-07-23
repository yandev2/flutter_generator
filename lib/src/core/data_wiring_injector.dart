// ignore_for_file: avoid_print
import 'dart:io';

import '../builder/presentation_wiring_builder.dart';
import '../parser/repository_parser.dart';
import 'build_runner_reminder.dart';
import 'feature_paths.dart';
import 'string_extensions.dart';

/// Auto-wire provider chain:
/// apiClient → datasource → repositoryImpl → usecase (per method).
class DataWiringInjector {
  final String projectRoot;
  final PresentationWiringBuilder _builder;

  DataWiringInjector(
    this.projectRoot, {
    PresentationWiringBuilder? builder,
  }) : _builder = builder ?? PresentationWiringBuilder();

  void injectAll({
    required String featureName,
    required String repositoryName,
    required List<ParsedMethod> methods,
  }) {
    final featureDir = featureName.toSnakeCase();
    final providersDir = Directory(
      '$projectRoot/${FeaturePaths.presentationProviders(featureDir)}',
    );
    if (!providersDir.existsSync()) {
      providersDir.createSync(recursive: true);
      print('ℹ️ Dibuat folder: ${providersDir.path}');
    }

    _writeDatasourceProvider(
      providersDir: providersDir,
      repositoryName: repositoryName,
    );
    _writeRepositoryProvider(
      providersDir: providersDir,
      repositoryName: repositoryName,
    );

    for (final method in methods) {
      _writeUsecaseProvider(
        providersDir: providersDir,
        pageName: method.name,
        repositoryName: repositoryName,
      );
    }

    print('✅ Auto-wiring chain selesai untuk $repositoryName.');
    printBuildRunnerReminder();
  }

  void _writeDatasourceProvider({
    required Directory providersDir,
    required String repositoryName,
  }) {
    final fileName =
        PresentationWiringBuilder.datasourceProviderFileNameFor(repositoryName);
    final file = File('${providersDir.path}/$fileName');

    if (file.existsSync()) {
      print('⚠️ Skip: ${file.path} sudah ada.');
      return;
    }

    file.writeAsStringSync(
      _builder.buildDatasourceProvider(repositoryName: repositoryName),
    );
    print('✅ Generated: ${file.path}');
  }

  void _writeRepositoryProvider({
    required Directory providersDir,
    required String repositoryName,
  }) {
    final fileName =
        PresentationWiringBuilder.repositoryProviderFileName(repositoryName);
    final file = File('${providersDir.path}/$fileName');
    final content = _builder.buildRepositoryProvider(
      repositoryName: repositoryName,
    );

    if (file.existsSync()) {
      final existing = file.readAsStringSync();
      if (existing.contains('apiClientProvider') &&
          !existing.contains('DatasourceProvider')) {
        file.writeAsStringSync(content);
        print('🔄 Updated: ${file.path} (migrasi ke datasource chain)');
        return;
      }
      print('⚠️ Skip: ${file.path} sudah ada.');
      return;
    }

    file.writeAsStringSync(content);
    print('✅ Generated: ${file.path}');
  }

  void _writeUsecaseProvider({
    required Directory providersDir,
    required String pageName,
    required String repositoryName,
  }) {
    final fileName =
        PresentationWiringBuilder.usecaseProviderFileName(pageName);
    final file = File('${providersDir.path}/$fileName');
    final content = _builder.buildUsecaseProvider(
      pageName: pageName,
      repositoryName: repositoryName,
    );

    if (file.existsSync()) {
      file.writeAsStringSync(content);
      print('🔄 Updated: ${file.path}');
      return;
    }

    file.writeAsStringSync(content);
    print('✅ Generated: ${file.path}');
  }
}
