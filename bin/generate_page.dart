// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/builder/riverpod_presentation_builder.dart';
import 'package:flutter_generator/src/core/build_runner_reminder.dart';
import 'package:flutter_generator/src/core/route_injector.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';

void main() {
  print('=== Flutter Presentation Generator (Riverpod) ===');

  stdout.write('Masukkan nama Fitur (contoh: auth): ');
  final featureInput = stdin.readLineSync()?.trim();
  if (featureInput == null || featureInput.isEmpty) {
    print('❌ Nama Fitur tidak boleh kosong.');
    return;
  }
  final featureName = featureInput.toSnakeCase();

  stdout.write('Masukkan nama Page/Layar (contoh: login): ');
  final pageInput = stdin.readLineSync()?.trim();
  if (pageInput == null || pageInput.isEmpty) {
    print('❌ Nama Page tidak boleh kosong.');
    return;
  }
  final pageName = pageInput.toSnakeCase();

  final currentDir = Directory.current.path;

  // Foldering per file type: states / providers / views
  final featureDir = Directory('$currentDir/lib/presentation/$featureName');
  final statesDir = Directory('${featureDir.path}/states');
  final providersDir = Directory('${featureDir.path}/providers');
  final viewsDir = Directory('${featureDir.path}/views');

  if (!statesDir.existsSync()) statesDir.createSync(recursive: true);
  if (!providersDir.existsSync()) providersDir.createSync(recursive: true);
  if (!viewsDir.existsSync()) viewsDir.createSync(recursive: true);

  final builder = RiverpodPresentationBuilder();

  // 1. Generate State
  final stateCode = builder.buildState(pageName);
  final stateFile = File('${statesDir.path}/${pageName}_state.dart');
  if (!stateFile.existsSync()) {
    stateFile.writeAsStringSync(stateCode);
    print('✅ Generated: ${stateFile.path}');
  } else {
    print('⚠️ Skip: ${stateFile.path} sudah ada.');
  }

  // 2. Generate Provider (Notifier)
  final providerCode = builder.buildProvider(pageName);
  final providerFile = File('${providersDir.path}/${pageName}_provider.dart');
  if (!providerFile.existsSync()) {
    providerFile.writeAsStringSync(providerCode);
    print('✅ Generated: ${providerFile.path}');
  } else {
    print('⚠️ Skip: ${providerFile.path} sudah ada.');
  }

  // 3. Generate View (ConsumerWidget)
  final viewCode = builder.buildView(pageName);
  final viewFile = File('${viewsDir.path}/${pageName}_view.dart');
  if (!viewFile.existsSync()) {
    viewFile.writeAsStringSync(viewCode);
    print('✅ Generated: ${viewFile.path}');
  } else {
    print('⚠️ Skip: ${viewFile.path} sudah ada.');
  }

  // 4. Inject Route (go_router)
  stdout.write(
    'Apakah Anda ingin meng-inject Route ini ke lib/core/router/? (y/n): ',
  );
  final injectRouteInput = stdin.readLineSync()?.trim().toLowerCase();

  if (injectRouteInput == 'y') {
    final routeDir = '$currentDir/lib/core/router';
    final routeDirFile = Directory(routeDir);
    if (!routeDirFile.existsSync()) {
      routeDirFile.createSync(recursive: true);
    }

    final injector = RouteInjector(routeDir);
    injector.inject(featureName, pageName);
  }

  print('🎉 Presentation Generator Selesai!');
  printBuildRunnerReminder();
}
