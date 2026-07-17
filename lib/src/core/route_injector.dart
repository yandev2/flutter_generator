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
import 'package:get_x_master/get_x_master.dart';
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

    if (_routeNameExists(content, camelPageName)) {
      print('⚠️ RouteName $camelPageName sudah ada. Skip inject.');
      return;
    }

    final lastBraceIndex = content.lastIndexOf('}');
    if (lastBraceIndex != -1) {
      final newContent =
          '${content.substring(0, lastBraceIndex)}$routeString\n${content.substring(lastBraceIndex)}';
      file.writeAsStringSync(newContent);
      print('✅ Injected $camelPageName ke RouteName.');
    }
  }

  void _injectAppRoute(File file, String featureName, String pageName) {
    var content = file.readAsStringSync();
    final camelPageName = pageName.toCamelCase();
    final viewName = '${pageName.toPascalCase()}View';
    final bindingName = '${pageName.toPascalCase()}Binding';

    if (_routePageExists(content, camelPageName)) {
      print('⚠️ AppRoute untuk $camelPageName sudah ada. Skip inject.');
      return;
    }

    final featureDir = featureName.toSnakeCase();
    final pageSnake = pageName.toSnakeCase();

    final bindingImport =
        "import '../../presentation/$featureDir/bindings/${pageSnake}_binding.dart';";
    final viewImport =
        "import '../../presentation/$featureDir/views/${pageSnake}_view.dart';";

    content = _appendImportsIfMissing(
      content,
      [bindingImport, viewImport],
    );

    final getPageString = '''
    GetPage(
      name: RouteName.$camelPageName,
      page: () => const $viewName(),
      binding: $bindingName(),
    ),''';

    final closingBracketIndex = _findPagesListClosingIndex(content);
    if (closingBracketIndex != -1) {
      content =
          '${content.substring(0, closingBracketIndex)}$getPageString\n  ${content.substring(closingBracketIndex)}';
      file.writeAsStringSync(content);
      print('✅ Injected GetPage $camelPageName ke AppRoute.');
    } else {
      print('❌ Gagal mencari "];" di AppRoute. Silakan inject manual.');
    }
  }

  static bool _routeNameExists(String content, String camelPageName) {
    return RegExp('static\\s+const\\s+$camelPageName\\b').hasMatch(content);
  }

  static bool _routePageExists(String content, String camelPageName) {
    return content.contains('RouteName.$camelPageName');
  }

  static String _appendImportsIfMissing(
    String content,
    List<String> imports,
  ) {
    var updated = content;
    for (final importLine in imports) {
      if (_hasImport(updated, importLine)) {
        continue;
      }
      updated = _insertImport(updated, importLine);
    }
    return updated;
  }

  static bool _hasImport(String content, String importLine) {
    final uri = _extractImportUri(importLine);
    return content.contains(uri);
  }

  static String _extractImportUri(String importLine) {
    final start = importLine.indexOf("'") + 1;
    final end = importLine.lastIndexOf("'");
    if (start <= 0 || end <= start) {
      return importLine;
    }
    return importLine.substring(start, end);
  }

  static String _insertImport(String content, String importLine) {
    final lastImportIndex = content.lastIndexOf('import ');
    if (lastImportIndex != -1) {
      final endOfLastImport = content.indexOf(';', lastImportIndex) + 1;
      return '${content.substring(0, endOfLastImport)}\n$importLine${content.substring(endOfLastImport)}';
    }
    return '$importLine\n$content';
  }

  static int _findPagesListClosingIndex(String content) {
    final pagesKeyword = RegExp(r'static\s+final\s+pages\s*=\s*\[');
    final match = pagesKeyword.firstMatch(content);
    if (match == null) {
      return content.lastIndexOf('];');
    }

    var index = match.end;
    var depth = 1;
    while (index < content.length && depth > 0) {
      final char = content[index];
      if (char == '[') {
        depth++;
      } else if (char == ']') {
        depth--;
        if (depth == 0) {
          final semicolonIndex = index + 1;
          if (semicolonIndex < content.length && content[semicolonIndex] == ';') {
            return semicolonIndex + 1;
          }
          return index;
        }
      }
      index++;
    }

    return content.lastIndexOf('];');
  }
}
