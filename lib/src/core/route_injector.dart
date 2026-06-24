// ignore_for_file: avoid_print
import 'dart:io';
import 'string_extensions.dart';

class RouteInjector {
  final String routeDir;

  RouteInjector(this.routeDir);

  void inject(String featureName, String pageName) {
    final routeNameFile = File('$routeDir/route_name.dart');
    final appRouteFile = File('$routeDir/app_route.dart');

    _ensureRouteNameFileExists(routeNameFile);
    _ensureAppRouteFileExists(appRouteFile);

    _injectRouteName(routeNameFile, pageName);
    _injectAppRoute(appRouteFile, featureName, pageName);
  }

  void _ensureRouteNameFileExists(File file) {
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      file.writeAsStringSync('''
abstract class RouteName {
}
''');
      print('ℹ️ Dibuat file route_name.dart baru.');
    }
  }

  void _ensureAppRouteFileExists(File file) {
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      file.writeAsStringSync('''
import 'package:get/get.dart';
import 'route_name.dart';

class AppRoute {
  static final pages = [
  ];
}
''');
      print('ℹ️ Dibuat file app_route.dart baru.');
    }
  }

  void _injectRouteName(File file, String pageName) {
    final content = file.readAsStringSync();
    final camelPageName = pageName.toCamelCase();
    final routeString =
        "  static const $camelPageName = '/${pageName.toSnakeCase()}';";

    if (content.contains(routeString)) {
      print('⚠️ RouteName $camelPageName sudah ada. Skip inject.');
      return;
    }

    // Insert sebelum kurung kurawal penutup terakhir
    final lastBraceIndex = content.lastIndexOf('}');
    if (lastBraceIndex != -1) {
      final newContent =
          '${content.substring(0, lastBraceIndex)}$routeString\n${content.substring(lastBraceIndex)}';
      file.writeAsStringSync(newContent);
      print('✅ Injected $camelPageName ke RouteName.');
    }
  }

  void _injectAppRoute(File file, String featureName, String pageName) {
    String content = file.readAsStringSync();
    final camelPageName = pageName.toCamelCase();
    final viewName = '${pageName.toPascalCase()}View';
    final bindingName = '${pageName.toPascalCase()}Binding';

    final getPageString = '''
    GetPage(
      name: RouteName.$camelPageName,
      page: () => const $viewName(),
      binding: $bindingName(),
    ),''';

    if (content.contains('RouteName.$camelPageName')) {
      print('⚠️ AppRoute untuk $camelPageName sudah ada. Skip inject.');
      return;
    }

    // 1. Inject Imports
    final featureDir = featureName.toSnakeCase();
    final pageSnake = pageName.toSnakeCase();

    final bindingImport =
        "import '../../presentation/$featureDir/bindings/${pageSnake}_binding.dart';";
    final viewImport =
        "import '../../presentation/$featureDir/views/${pageSnake}_view.dart';";

    // Cari letak import terakhir
    final lastImportIndex = content.lastIndexOf('import ');
    if (lastImportIndex != -1) {
      final endOfLastImport = content.indexOf(';', lastImportIndex) + 1;
      content =
          '${content.substring(0, endOfLastImport)}\n$bindingImport\n$viewImport${content.substring(endOfLastImport)}';
    } else {
      content = '$bindingImport\n$viewImport\n$content';
    }

    // 2. Inject GetPage
    final closingBracketIndex = content.lastIndexOf('];');
    if (closingBracketIndex != -1) {
      content =
          '${content.substring(0, closingBracketIndex)}$getPageString\n  ${content.substring(closingBracketIndex)}';
      file.writeAsStringSync(content);
      print('✅ Injected GetPage $camelPageName ke AppRoute.');
    } else {
      print('❌ Gagal mencari "];" di AppRoute. Silakan inject manual.');
    }
  }
}
