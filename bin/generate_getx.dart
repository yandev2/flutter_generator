// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/builder/getx_presentation_builder.dart';
import 'package:flutter_generator/src/core/route_injector.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';

void main() {
  print('=== Flutter GetX Presentation Generator ===');

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

  // Opsi B: Foldering per file type
  final featureDir = Directory('$currentDir/lib/presentation/$featureName');
  final bindingsDir = Directory('${featureDir.path}/bindings');
  final controllersDir = Directory('${featureDir.path}/controllers');
  final viewsDir = Directory('${featureDir.path}/views');

  // Buat folder jika belum ada
  if (!bindingsDir.existsSync()) bindingsDir.createSync(recursive: true);
  if (!controllersDir.existsSync()) {
    controllersDir.createSync(recursive: true);
  }
  if (!viewsDir.existsSync()) viewsDir.createSync(recursive: true);

  final builder = GetxPresentationBuilder();

  // 1. Generate Controller
  final controllerCode = builder.buildController(pageName);
  final controllerFile =
      File('${controllersDir.path}/${pageName}_controller.dart');
  if (!controllerFile.existsSync()) {
    controllerFile.writeAsStringSync(controllerCode);
    print('✅ Generated: ${controllerFile.path}');
  } else {
    print('⚠️ Skip: ${controllerFile.path} sudah ada.');
  }

  // 2. Generate Binding
  final bindingCode = builder.buildBinding(pageName);
  final bindingFile = File('${bindingsDir.path}/${pageName}_binding.dart');
  if (!bindingFile.existsSync()) {
    bindingFile.writeAsStringSync(bindingCode);
    print('✅ Generated: ${bindingFile.path}');
  } else {
    print('⚠️ Skip: ${bindingFile.path} sudah ada.');
  }

  // 3. Generate View
  final viewCode = builder.buildView(pageName);
  final viewFile = File('${viewsDir.path}/${pageName}_view.dart');
  if (!viewFile.existsSync()) {
    viewFile.writeAsStringSync(viewCode);
    print('✅ Generated: ${viewFile.path}');
  } else {
    print('⚠️ Skip: ${viewFile.path} sudah ada.');
  }

  // 4. Inject Route
  stdout.write(
      'Apakah Anda ingin meng-inject Route ini ke lib/service/route/? (y/n): ');
  final injectRouteInput = stdin.readLineSync()?.trim().toLowerCase();

  if (injectRouteInput == 'y') {
    final routeDir = '$currentDir/lib/service/route';
    final routeDirFile = Directory(routeDir);
    if (!routeDirFile.existsSync()) {
      routeDirFile.createSync(recursive: true);
    }

    final injector = RouteInjector(routeDir);
    injector.inject(featureName, pageName);
  }

  print('🎉 GetX Presentation Generator Selesai!');
}
