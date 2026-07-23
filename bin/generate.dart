// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/core/string_extensions.dart';
import 'package:flutter_generator/src/generator.dart';

void main(List<String> args) {
  print('=== Flutter JSON to Entity & Model Generator ===');
  print(
    'ℹ️ Format: fitur = snake_case (user_profile), class = PascalCase (UserResponse)',
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
    'Masukkan nama class utama (PascalCase, contoh: User atau UserResponse — jangan user_response): ',
  );
  final className = stdin.readLineSync();

  if (className == null || className.trim().isEmpty) {
    print('Nama class tidak boleh kosong.');
    return;
  }

  stdout.write(
    'Masukkan path file JSON (contoh: sample.json atau assets/json/user_response.json): ',
  );
  final jsonPath = stdin.readLineSync();

  if (jsonPath == null || jsonPath.trim().isEmpty) {
    print('Path file JSON tidak boleh kosong.');
    return;
  }

  final file = File(jsonPath.trim());
  if (!file.existsSync()) {
    print('File tidak ditemukan: ${file.path}');
    return;
  }

  final jsonString = file.readAsStringSync();

  final generator = Generator();
  generator.generate(jsonString, className.trim(), featureName);
}
