// ignore_for_file: avoid_print
import 'dart:io';
import 'generate.dart' as gen_model;
import 'generate_usecase.dart' as gen_usecase;
import 'generate_getx.dart' as gen_getx;
import 'generate_init.dart' as gen_init;

void main(List<String> args) {
  while (true) {
    print('');
    print('=====================================');
    print('🚀 FLUTTER GENERATOR PRO 🚀');
    print('=====================================');
    print('Silakan pilih alat yang ingin dijalankan:');
    print('1. JSON to Entity & Model Generator');
    print('2. Usecase Generator');
    print('3. Presentation Generator (get_x_master)');
    print('4. Initial Setup Project Generator');
    print('5. Keluar');
    print('=====================================');
    stdout.write('Masukkan pilihan Anda (1/2/3/4/5): ');

    final input = stdin.readLineSync()?.trim();

    if (input == '5') {
      print('👋 Terima kasih telah menggunakan Flutter Generator Pro!');
      break;
    } else if (input == '1') {
      print('\n--- JSON to Entity & Model Generator ---');
      gen_model.main(args);
      break;
    } else if (input == '2') {
      print('\n--- Usecase Generator ---');
      gen_usecase.main(args);
      break;
    } else if (input == '3') {
      print('\n--- Presentation Generator (get_x_master) ---');
      gen_getx.main();
      break;
    } else if (input == '4') {
      print('\n--- Initial Setup Project Generator ---');
      gen_init.main(args);
      break;
    } else {
      print(
        '❌ Pilihan tidak valid, silakan masukkan angka 1, 2, 3, 4, atau 5.',
      );
    }
  }
}
