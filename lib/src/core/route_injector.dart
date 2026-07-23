// ignore_for_file: avoid_print
import 'dart:io';
import 'string_extensions.dart';

/// Meng-inject route baru ke setup **go_router** (Riverpod).
///
/// Mengelola route di [routeDir] (mis. `lib/app/router`).
class RouteInjector {
  final String routeDir;

  RouteInjector(this.routeDir);

  void inject(String featureName, String pageName) {
    final routePathsFile = File('$routeDir/route_paths.dart');
    final appRouterFile = File('$routeDir/app_router.dart');

    _ensureRoutePathsFileExists(routePathsFile);
    _ensureAppRouterFileExists(appRouterFile);

    _injectRoutePath(routePathsFile, pageName);
    _injectGoRoute(appRouterFile, featureName, pageName);
  }

  void _ensureRoutePathsFileExists(File file) {
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      file.writeAsStringSync('''
abstract class RoutePaths {
  static const splash = '/';
}
''');
      print('ℹ️ Dibuat file route_paths.dart baru.');
    }
  }

  void _ensureAppRouterFileExists(File file) {
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      file.writeAsStringSync('''
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'route_paths.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
    ],
  );
}
''');
      print('ℹ️ Dibuat file app_router.dart baru.');
    }
  }

  void _injectRoutePath(File file, String pageName) {
    final content = file.readAsStringSync();
    final camelPageName = pageName.toCamelCase();
    final routeString =
        "  static const $camelPageName = '/${pageName.toSnakeCase()}';";

    if (_routePathExists(content, camelPageName)) {
      print('⚠️ RoutePaths $camelPageName sudah ada. Skip inject.');
      return;
    }

    final lastBraceIndex = content.lastIndexOf('}');
    if (lastBraceIndex != -1) {
      final newContent =
          '${content.substring(0, lastBraceIndex)}$routeString\n${content.substring(lastBraceIndex)}';
      file.writeAsStringSync(newContent);
      print('✅ Injected $camelPageName ke RoutePaths.');
    }
  }

  void _injectGoRoute(File file, String featureName, String pageName) {
    var content = file.readAsStringSync();
    final camelPageName = pageName.toCamelCase();
    final pageClassName = '${pageName.toPascalCase()}Page';

    if (_goRouteExists(content, camelPageName)) {
      print('⚠️ GoRoute untuk $camelPageName sudah ada. Skip inject.');
      return;
    }

    final featureDir = featureName.toSnakeCase();
    final pageSnake = pageName.toSnakeCase();

    final pageImport =
        "import '../../features/$featureDir/presentation/pages/${pageSnake}_page.dart';";

    content = _appendImportsIfMissing(content, [pageImport]);

    final goRouteString = '''
      GoRoute(
        path: RoutePaths.$camelPageName,
        builder: (context, state) => const $pageClassName(),
      ),''';

    final closingBracketIndex = _findRoutesListClosingIndex(content);
    if (closingBracketIndex != -1) {
      content =
          '${content.substring(0, closingBracketIndex)}$goRouteString\n    ${content.substring(closingBracketIndex)}';
      file.writeAsStringSync(content);
      print('✅ Injected GoRoute $camelPageName ke appRouter.');
    } else {
      print('❌ Gagal mencari "routes: [" di app_router.dart. Inject manual.');
    }
  }

  static bool _routePathExists(String content, String camelPageName) {
    return RegExp('static\\s+const\\s+$camelPageName\\b').hasMatch(content);
  }

  static bool _goRouteExists(String content, String camelPageName) {
    return content.contains('RoutePaths.$camelPageName');
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

  static int _findRoutesListClosingIndex(String content) {
    final routesKeyword = RegExp(r'routes\s*:\s*\[');
    final match = routesKeyword.firstMatch(content);
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
          return index;
        }
      }
      index++;
    }

    return content.lastIndexOf(']');
  }
}
