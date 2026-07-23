// ignore_for_file: avoid_print
import 'dart:io';
import 'package:flutter_generator/src/builder/riverpod_presentation_builder.dart';
import 'package:flutter_generator/src/core/build_runner_reminder.dart';
import 'package:flutter_generator/src/core/feature_paths.dart';
import 'package:flutter_generator/src/core/route_injector.dart';
import 'package:flutter_generator/src/core/string_extensions.dart';

void main() {
  print('=== Flutter Presentation Generator (Riverpod) ===');
  print(
    'ℹ️ Format: fitur/page = snake_case (reset_password), bukan resetPassword/ResetPassword',
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
    'Masukkan nama Page/Layar (snake_case, contoh: login atau reset_password — jangan resetPassword/ResetPassword): ',
  );
  final pageInput = stdin.readLineSync()?.trim();
  if (pageInput == null || pageInput.isEmpty) {
    print('❌ Nama Page tidak boleh kosong.');
    return;
  }
  final pageName = pageInput.toSnakeCase();

  final currentDir = Directory.current.path;

  for (final dir in FeaturePaths.featureScaffoldDirs(featureName)) {
    Directory('$currentDir/$dir').createSync(recursive: true);
  }

  final statesDir = Directory(
    '$currentDir/${FeaturePaths.presentationStates(featureName)}',
  );
  final providersDir = Directory(
    '$currentDir/${FeaturePaths.presentationProviders(featureName)}',
  );
  final pagesDir = Directory(
    '$currentDir/${FeaturePaths.presentationPages(featureName)}',
  );

  final builder = RiverpodPresentationBuilder();

  final stateCode = builder.buildState(pageName);
  final stateFile = File('${statesDir.path}/${pageName}_state.dart');
  if (!stateFile.existsSync()) {
    stateFile.writeAsStringSync(stateCode);
    print('✅ Generated: ${stateFile.path}');
  } else {
    print('⚠️ Skip: ${stateFile.path} sudah ada.');
  }

  final providerCode = builder.buildProvider(pageName);
  final providerFile = File('${providersDir.path}/${pageName}_provider.dart');
  if (!providerFile.existsSync()) {
    providerFile.writeAsStringSync(providerCode);
    print('✅ Generated: ${providerFile.path}');
  } else {
    print('⚠️ Skip: ${providerFile.path} sudah ada.');
  }

  final pageCode = builder.buildPage(pageName);
  final pageFile = File('${pagesDir.path}/${pageName}_page.dart');
  if (!pageFile.existsSync()) {
    pageFile.writeAsStringSync(pageCode);
    print('✅ Generated: ${pageFile.path}');
  } else {
    print('⚠️ Skip: ${pageFile.path} sudah ada.');
  }

  stdout.write(
    'Apakah Anda ingin meng-inject Route ini ke lib/app/router/? (y/n, contoh: y): ',
  );
  final injectRouteInput = stdin.readLineSync()?.trim().toLowerCase();

  if (injectRouteInput == 'y') {
    final routeDir = '$currentDir/${FeaturePaths.appRouterDir}';
    Directory(routeDir).createSync(recursive: true);
    RouteInjector(routeDir).inject(featureName, pageName);
  }

  print('🎉 Presentation Generator Selesai!');
  printBuildRunnerReminder();
}
