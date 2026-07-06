// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/parser/repository_parser.dart';
import 'package:flutter_generator/src/builder/usecase_builder.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';
import 'package:flutter_generator/src/core/import_resolver.dart';

void main(List<String> args) {
  print('=== Flutter Usecase Generator ===');
  stdout.write('Masukkan nama Repository (contoh: AuthRepository): ');
  final repoName = stdin.readLineSync()?.trim();

  if (repoName == null || repoName.isEmpty) {
    print('Nama Repository tidak boleh kosong.');
    return;
  }

  final currentDir = Directory.current.path;
  final repoFileName = '${repoName.toSnakeCase()}.dart';
  final repoFilePath = '$currentDir/lib/domain/repository/$repoFileName';

  final file = File(repoFilePath);
  if (!file.existsSync()) {
    print('❌ File Repository tidak ditemukan di: $repoFilePath');
    return;
  }

  try {
    final parser = RepositoryParser();
    final parsedRepo = parser.parse(repoFilePath, repoName);

    if (parsedRepo.methods.isEmpty) {
      print('⚠️ Tidak ada fungsi/method yang ditemukan di dalam ${parsedRepo.name}.');
      return;
    }

    final builder = UsecaseBuilder();

    // Nama folder output: menghapus kata Repository di belakangnya
    final baseName = repoName.replaceAll(RegExp(r'Repository$', caseSensitive: false), '');
    final usecaseDirName = '${baseName.toSnakeCase()}_usecase';
    final outputDir = Directory('$currentDir/lib/domain/usecase/$usecaseDirName');

    if (!outputDir.existsSync()) {
      outputDir.createSync(recursive: true);
    }

    for (var method in parsedRepo.methods) {
      final usecaseFileName = '${method.name.toSnakeCase()}_usecase.dart';
      final usecaseFilePath = '${outputDir.path}/$usecaseFileName';

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
      usecaseFile.writeAsStringSync(usecaseCode);
      print('✅ Generated: ${usecaseFile.path}');
    }

    print('🎉 Generate Usecase Selesai!');
  } catch (e) {
    print('❌ Error generating usecase: $e');
  }
}
