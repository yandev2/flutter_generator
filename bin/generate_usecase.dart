// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/parser/repository_parser.dart';
import 'package:flutter_generator/src/builder/usecase_builder.dart';
import 'package:flutter_generator/src/core/presentation_wiring_injector.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';
import 'package:flutter_generator/src/core/import_resolver.dart';
import 'package:flutter_generator/src/core/feature_paths.dart';
import 'package:flutter_generator/src/core/usecase_naming.dart' as naming;

void main(List<String> args) {
  print('=== Flutter Usecase Generator ===');
  print(
    'ℹ️ Format: fitur/page = snake_case (reset_password), repository = PascalCase (AuthRepository)',
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
    print('Nama Repository tidak boleh kosong.');
    return;
  }

  final currentDir = Directory.current.path;
  final repoFileName = '${repoName.toSnakeCase()}.dart';
  final repoFilePath =
      '$currentDir/${FeaturePaths.domainRepositories(featureName)}/$repoFileName';

  final file = File(repoFilePath);
  if (!file.existsSync()) {
    print('❌ File Repository tidak ditemukan di: $repoFilePath');
    print(
      'ℹ️ Pastikan sudah menjalankan gen_init dan file repository ada di path feature-first.',
    );
    return;
  }

  try {
    final parser = RepositoryParser();
    final parsedRepo = parser.parse(repoFilePath, repoName);

    if (parsedRepo.methods.isEmpty) {
      print(
        '⚠️ Tidak ada fungsi/method yang ditemukan di dalam ${parsedRepo.name}.',
      );
      return;
    }

    final builder = UsecaseBuilder();
    final outputDir = Directory(
      '$currentDir/${FeaturePaths.domainUsecases(featureName)}',
    );

    if (!outputDir.existsSync()) {
      outputDir.createSync(recursive: true);
    }

    final expectedFiles = <String>{};

    for (var method in parsedRepo.methods) {
      final fileName = naming.usecaseFileName(method.name);
      expectedFiles.add(fileName);
      final usecaseFilePath = '${outputDir.path}/$fileName';

      final usecaseCode = builder.build(
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

    _removeStaleUsecases(outputDir, expectedFiles);

    stdout.write(
      '\nInject usecase provider ke presentation layer (auto-wiring)? (y/n, contoh: y): ',
    );
    final injectInput = stdin.readLineSync()?.trim().toLowerCase();
    if (injectInput == 'y') {
      stdout.write(
        'Masukkan nama Page (snake_case, contoh: login atau reset_password — jangan resetPassword/ResetPassword): ',
      );
      final pageInput = stdin.readLineSync()?.trim();

      if (pageInput == null || pageInput.isEmpty) {
        print('❌ Nama Page wajib diisi untuk auto-wiring.');
      } else {
        PresentationWiringInjector(currentDir).inject(
          featureName: featureName,
          pageName: pageInput,
          repositoryName: repoName,
          methods: parsedRepo.methods,
        );
      }
    }

    print('🎉 Generate Usecase Selesai!');
  } catch (e) {
    print('❌ Error generating usecase: $e');
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
