// ignore_for_file: avoid_print
import 'dart:io';
import 'generate_init.dart' as gen_init;
import 'generate.dart' as gen_model;
import 'generate_data.dart' as gen_data;
import 'generate_usecase.dart' as gen_usecase;
import 'generate_page.dart' as gen_page;

void main(List<String> args) {
  while (true) {
    print('');
    print('=====================================');
    print('🚀 FLUTTER GENERATOR PRO 🚀');
    print('=====================================');
    print('Silakan pilih alat yang ingin dijalankan:');
    print(
      'ℹ️ Format input: fitur/page = snake_case (user_response), class/repository = PascalCase (UserResponse)',
    );
    print('1. Initial Setup Project Generator (gen_init)');
    print('2. JSON to Entity & Model Generator (gen_model)');
    print('3. Data Layer Generator (gen_data)');
    print('4. Usecase Generator (gen_usecase)');
    print('5. Presentation Generator / Page (gen_page)');
    print('6. Keluar');
    print('=====================================');
    stdout.write('Masukkan pilihan Anda (1/2/3/4/5/6): ');

    final input = stdin.readLineSync()?.trim();

    if (input == '6') {
      print('👋 Terima kasih telah menggunakan Flutter Generator Pro!');
      break;
    } else if (input == '1') {
      print('\n--- Initial Setup Project Generator ---');
      gen_init.main(args);
      break;
    } else if (input == '2') {
      print('\n--- JSON to Entity & Model Generator ---');
      gen_model.main(args);
      break;
    } else if (input == '3') {
      print('\n--- Data Layer Generator ---');
      gen_data.main(args);
      break;
    } else if (input == '4') {
      print('\n--- Usecase Generator ---');
      gen_usecase.main(args);
      break;
    } else if (input == '5') {
      print('\n--- Presentation Generator (Riverpod) ---');
      gen_page.main();
      break;
    } else {
      print(
        '❌ Pilihan tidak valid, silakan masukkan angka 1, 2, 3, 4, 5, atau 6.',
      );
    }
  }
}
