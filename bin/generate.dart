// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/generator.dart';

void main(List<String> args) {
  print('=== Flutter JSON to Entity & Model Generator ===');
  stdout.write('Masukkan nama class utama (contoh: Auth): ');
  final className = stdin.readLineSync();

  if (className == null || className.trim().isEmpty) {
    print('Nama class tidak boleh kosong.');
    return;
  }

  stdout.write('Masukkan path file JSON (contoh: sample.json): ');
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
  generator.generate(jsonString, className.trim());
}
