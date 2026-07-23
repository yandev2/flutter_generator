// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';

import 'builder/entity_builder.dart';
import 'builder/model_builder.dart';
import 'core/build_runner_reminder.dart';
import 'core/string_extensions.dart';
import 'core/feature_paths.dart';
import 'parser/json_parser.dart';

class Generator {
  void generate(String jsonString, String rootClassName, String featureName) {
    try {
      final jsonMap = json.decode(jsonString);
      if (jsonMap is! Map<String, dynamic>) {
        throw Exception('Root of JSON must be an Object (Map).');
      }

      final parser = JsonParser();
      final classes = parser.parse(rootClassName, jsonMap);

      final entityBuilder = EntityBuilder();
      final modelBuilder = ModelBuilder();

      final currentDir = Directory.current.path;
      final entityDir = Directory(
        '$currentDir/${FeaturePaths.domainEntities(featureName)}',
      );
      final modelDir = Directory(
        '$currentDir/${FeaturePaths.dataModels(featureName)}',
      );

      if (!entityDir.existsSync()) {
        entityDir.createSync(recursive: true);
      }
      if (!modelDir.existsSync()) {
        modelDir.createSync(recursive: true);
      }

      var filesWritten = 0;

      for (var classDef in classes) {
        final entityCode = entityBuilder.build(classDef);
        final modelCode = modelBuilder.build(classDef);

        final fileName = classDef.name.toSnakeCase();

        final entityFile =
            File('${entityDir.path}/${fileName}_entity.dart');
        final entityExisted = entityFile.existsSync();
        entityFile.writeAsStringSync(entityCode);
        filesWritten++;
        print(
          entityExisted
              ? '🔄 Updated Entity: ${entityFile.path}'
              : '✅ Generated Entity: ${entityFile.path}',
        );

        final modelFile =
            File('${modelDir.path}/${fileName}_model.dart');
        final modelExisted = modelFile.existsSync();
        modelFile.writeAsStringSync(modelCode);
        filesWritten++;
        print(
          modelExisted
              ? '🔄 Updated Model: ${modelFile.path}'
              : '✅ Generated Model: ${modelFile.path}',
        );
      }

      if (filesWritten == 0) {
        print('⚠️ Tidak ada file yang di-generate.');
        return;
      }

      if (!_hasBuildRunner()) {
        print(
          '⚠️ build_runner tidak ditemukan di pubspec.yaml.',
        );
        printBuildRunnerReminder();
        return;
      }

      print(
          '🎉 Generate Success! Menjalankan build_runner secara otomatis...');

      final isFlutter = _isFlutterProject();
      final result = Process.runSync(
        isFlutter ? 'flutter' : 'dart',
        isFlutter
            ? [
                'pub',
                'run',
                'build_runner',
                'build',
                '-d',
              ]
            : [
                'run',
                'build_runner',
                'build',
                '-d',
              ],
        runInShell: true,
        workingDirectory: currentDir,
      );

      if (result.exitCode == 0) {
        print('✅ Build runner selesai dengan sukses!');
      } else {
        print(
            '❌ Build runner gagal dengan exit code ${result.exitCode}:');
        print(result.stderr);
        print(result.stdout);
        printBuildRunnerReminder();
      }
    } catch (e) {
      print('❌ Error generating code: $e');
    }
  }

  static bool _hasBuildRunner() {
    final pubspec = File('${Directory.current.path}/pubspec.yaml');
    if (!pubspec.existsSync()) {
      return false;
    }
    return pubspec.readAsStringSync().contains('build_runner');
  }

  static bool _isFlutterProject() {
    final pubspec = File('${Directory.current.path}/pubspec.yaml');
    if (!pubspec.existsSync()) {
      return false;
    }
    final content = pubspec.readAsStringSync();
    return content.contains('flutter:') &&
        (content.contains('sdk: flutter') || content.contains('sdk:flutter'));
  }
}
