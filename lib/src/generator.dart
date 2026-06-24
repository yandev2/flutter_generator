// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';

import 'builder/entity_builder.dart';
import 'builder/model_builder.dart';
import 'core/string_extensions.dart';
import 'parser/json_parser.dart';

class Generator {
  void generate(String jsonString, String rootClassName) {
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
      final entityDir = Directory('$currentDir/lib/domain/entity');
      final modelDir = Directory('$currentDir/lib/data/model');

      if (!entityDir.existsSync()) {
        entityDir.createSync(recursive: true);
      }
      if (!modelDir.existsSync()) {
        modelDir.createSync(recursive: true);
      }

      for (var classDef in classes) {
        final entityCode = entityBuilder.build(classDef);
        final modelCode = modelBuilder.build(classDef);

        final fileName = classDef.name.toSnakeCase();

        final entityFile =
            File('${entityDir.path}/${fileName}_entity.dart');
        entityFile.writeAsStringSync(entityCode);
        print('✅ Generated Entity: ${entityFile.path}');

        final modelFile =
            File('${modelDir.path}/${fileName}_model.dart');
        modelFile.writeAsStringSync(modelCode);
        print('✅ Generated Model: ${modelFile.path}');
      }

      print(
          '🎉 Generate Success! Menjalankan build_runner secara otomatis...');

      final result = Process.runSync(
        'dart',
        ['run', 'build_runner', 'build', '--delete-conflicting-outputs'],
        runInShell: true,
      );

      if (result.exitCode == 0) {
        print('✅ Build runner selesai dengan sukses!');
      } else {
        print(
            '❌ Build runner gagal dengan exit code ${result.exitCode}:');
        print(result.stderr);
        print(result.stdout);
      }
    } catch (e) {
      print('❌ Error generating code: $e');
    }
  }
}
