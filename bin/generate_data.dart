// ignore_for_file: avoid_print
import 'dart:io';

import 'package:flutter_generator/src/builder/datasource_builder.dart';
import 'package:flutter_generator/src/builder/repository_impl_builder.dart';
import 'package:flutter_generator/src/builder/usecase_builder.dart';
import 'package:flutter_generator/src/core/data_wiring_injector.dart';
import 'package:flutter_generator/src/core/data_naming.dart';
import 'package:flutter_generator/src/core/feature_paths.dart';
import 'package:flutter_generator/src/core/import_resolver.dart';
import 'package:flutter_generator/src/core/type_mapping.dart';
import 'package:flutter_generator/src/core/usecase_naming.dart' as naming;
import 'package:flutter_generator/src/parser/repository_parser.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';

void main(List<String> args) {
  print('=== Flutter Data Layer Generator ===');
  print(
    'ℹ️ Format: fitur = snake_case (user_profile), repository = PascalCase (UserProfileRepository)',
  );

  stdout.write(
    'Masukkan nama Fitur (snake_case, contoh: auth atau user_profile — jangan userProfile/UserProfile): ',
  );
  final featureInput = stdin.readLineSync()?.trim();
  if (featureInput == null || featureInput.isEmpty) {
    print('❌ Nama Fitur tidak boleh kosong.');
    return;
  }
  final featureName = featureInput.toSnakeCase();

  stdout.write(
    'Masukkan nama Repository (PascalCase, contoh: AuthRepository atau UserProfileRepository — jangan auth_repository): ',
  );
  final repoName = stdin.readLineSync()?.trim();
  if (repoName == null || repoName.isEmpty) {
    print('❌ Nama Repository tidak boleh kosong.');
    return;
  }

  final currentDir = Directory.current.path;
  final repoFileName = '${repoName.toSnakeCase()}.dart';
  final repoFilePath =
      '$currentDir/${FeaturePaths.domainRepositories(featureName)}/$repoFileName';

  final repoFile = File(repoFilePath);
  if (!repoFile.existsSync()) {
    print('❌ File Repository tidak ditemukan di: $repoFilePath');
    print(
      'ℹ️ Pastikan domain repository sudah ada di path feature-first.',
    );
    return;
  }

  try {
    final parser = RepositoryParser();
    final parsedRepo = parser.parse(repoFilePath, repoName);

    if (parsedRepo.methods.isEmpty) {
      print('⚠️ Tidak ada method di $repoName.');
      return;
    }

    for (final dir in [
      FeaturePaths.dataDatasources(featureName),
      FeaturePaths.dataRepositories(featureName),
      FeaturePaths.domainUsecases(featureName),
      FeaturePaths.presentationProviders(featureName),
    ]) {
      Directory('$currentDir/$dir').createSync(recursive: true);
    }

    _warnMissingModels(currentDir, featureName, parsedRepo);

    final datasourcePath =
        '$currentDir/${FeaturePaths.dataDatasources(featureName)}/${datasourceFileName(repoName)}';
    final repositoryImplPath =
        '$currentDir/${FeaturePaths.dataRepositories(featureName)}/${repositoryImplFileName(repoName)}';

    final datasourceBuilder = DatasourceBuilder();
    final repositoryImplBuilder = RepositoryImplBuilder();
    final usecaseBuilder = UsecaseBuilder();

    File(datasourcePath).writeAsStringSync(
      datasourceBuilder.build(repository: parsedRepo),
    );
    print('✅ Generated: $datasourcePath');

    File(repositoryImplPath).writeAsStringSync(
      repositoryImplBuilder.build(
        repository: parsedRepo,
        repositoryFilePath: repoFilePath,
        repositoryImplFilePath: repositoryImplPath,
      ),
    );
    print('✅ Generated: $repositoryImplPath');

    final usecaseDir = Directory(
      '$currentDir/${FeaturePaths.domainUsecases(featureName)}',
    );
    final expectedUsecases = <String>{};

    for (final method in parsedRepo.methods) {
      final fileName = naming.usecaseFileName(method.name);
      expectedUsecases.add(fileName);
      final usecaseFilePath = '${usecaseDir.path}/$fileName';
      final usecaseCode = usecaseBuilder.build(
        parsedRepo,
        method,
        repositoryFilePath: repoFilePath,
        usecaseFilePath: usecaseFilePath,
      );

      final unresolved = ImportResolver.findUnresolvedTypes(
        repository: parsedRepo,
        method: method,
      );
      if (unresolved.isNotEmpty) {
        print(
          '⚠️  ${method.name}: import tidak ditemukan untuk tipe: ${unresolved.join(', ')}',
        );
      }

      final usecaseFile = File(usecaseFilePath);
      final existed = usecaseFile.existsSync();
      usecaseFile.writeAsStringSync(usecaseCode);
      print(
        existed
            ? '🔄 Updated: ${usecaseFile.path}'
            : '✅ Generated: ${usecaseFile.path}',
      );
    }

    _removeStaleUsecases(usecaseDir, expectedUsecases);

    DataWiringInjector(currentDir).injectAll(
      featureName: featureName,
      repositoryName: repoName,
      methods: parsedRepo.methods,
    );

    print('🎉 Generate Data Layer Selesai!');
  } catch (e) {
    print('❌ Error generating data layer: $e');
  }
}

void _warnMissingModels(
  String projectRoot,
  String featureName,
  ParsedRepository repository,
) {
  final modelsDir = Directory(
    '$projectRoot/${FeaturePaths.dataModels(featureName)}',
  );
  if (!modelsDir.existsSync()) {
    print('⚠️ Folder models belum ada. Jalankan gen_model terlebih dahulu.');
    return;
  }

  for (final entityType
      in repository.methods.expand((m) => m.requiredTypes).where(isEntityTypeName)) {
    final modelFile = File(
      '${modelsDir.path}/${modelFileNameFromEntityType(entityType)}',
    );
    if (!modelFile.existsSync()) {
      print('⚠️ Model belum ada: ${modelFile.path}');
    }
  }
}

void _removeStaleUsecases(Directory outputDir, Set<String> expectedFiles) {
  if (!outputDir.existsSync()) {
    return;
  }

  for (final entity in outputDir.listSync()) {
    if (entity is! File) {
      continue;
    }

    final fileName = entity.uri.pathSegments.last;
    if (!fileName.endsWith('_usecase.dart')) {
      continue;
    }

    if (!expectedFiles.contains(fileName)) {
      entity.deleteSync();
      print('🗑️  Removed stale usecase: ${entity.path}');
    }
  }
}
