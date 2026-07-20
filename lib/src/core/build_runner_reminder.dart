// ignore_for_file: avoid_print

/// Pesan standar setelah generate file yang membutuhkan code generation.
void printBuildRunnerReminder() {
  print(
    'ℹ️ Jalankan `dart run build_runner build -d` untuk men-generate file .g.dart & .freezed.dart.',
  );
}
