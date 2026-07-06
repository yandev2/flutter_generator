import 'package:path/path.dart' as p;

import '../parser/repository_parser.dart';
import 'string_extensions.dart';

class ImportResolver {
  static const _excludedUriPatterns = ['dartz', 'fpdart'];

  static List<String> resolve({
    required ParsedRepository repository,
    required ParsedMethod method,
    required String repositoryFilePath,
    required String usecaseFilePath,
  }) {
    final resolved = <String>[];

    for (final import in repository.parsedImports) {
      if (_shouldSkipImport(import.uri)) {
        continue;
      }

      final showNames = _neededShowNames(import, method.requiredTypes);
      if (!_isImportNeeded(import, method.requiredTypes, showNames)) {
        continue;
      }

      final rewrittenUri = _rewriteUri(
        import.uri,
        repositoryFilePath,
        usecaseFilePath,
      );
      resolved.add(_formatImport(rewrittenUri, showNames));
    }

    resolved.sort(_compareImports);
    return resolved;
  }

  /// Returns type names required by [method] that could not be matched
  /// to any import in the repository (e.g. barrel files).
  static Set<String> findUnresolvedTypes({
    required ParsedRepository repository,
    required ParsedMethod method,
  }) {
    final resolvedTypes = <String>{};

    for (final import in repository.parsedImports) {
      if (_shouldSkipImport(import.uri)) {
        continue;
      }

      final showNames = _neededShowNames(import, method.requiredTypes);
      if (!_isImportNeeded(import, method.requiredTypes, showNames)) {
        continue;
      }

      if (showNames != null) {
        resolvedTypes.addAll(showNames);
      } else {
        final typeName = _typeNameFromUri(import.uri);
        if (typeName != null) {
          resolvedTypes.add(typeName);
        }
      }
    }

    return method.requiredTypes.difference(resolvedTypes);
  }

  static bool _shouldSkipImport(String uri) {
    if (_excludedUriPatterns.any(uri.contains)) {
      return true;
    }
    if (uri.endsWith('failures.dart')) {
      return true;
    }
    return false;
  }

  static List<String>? _neededShowNames(
    ParsedImport import,
    Set<String> requiredTypes,
  ) {
    if (import.showNames == null || import.showNames!.isEmpty) {
      return null;
    }

    final needed =
        import.showNames!.where(requiredTypes.contains).toList(growable: false);
    return needed.isEmpty ? null : needed;
  }

  static bool _isImportNeeded(
    ParsedImport import,
    Set<String> requiredTypes,
    List<String>? showNames,
  ) {
    if (import.showNames != null && import.showNames!.isNotEmpty) {
      return showNames != null && showNames.isNotEmpty;
    }

    final typeName = _typeNameFromUri(import.uri);
    if (typeName == null) {
      return false;
    }

    return requiredTypes.contains(typeName);
  }

  static String? _typeNameFromUri(String uri) {
    final segments = uri.split('/');
    final fileName = segments.last;
    if (!fileName.endsWith('.dart')) {
      return null;
    }

    final basename = fileName.substring(0, fileName.length - 5);
    return basename.toPascalCase();
  }

  static String _rewriteUri(
    String importUri,
    String repositoryFilePath,
    String usecaseFilePath,
  ) {
    if (importUri.startsWith('package:') || importUri.startsWith('dart:')) {
      return importUri;
    }

    final repoDir = p.dirname(repositoryFilePath);
    final usecaseDir = p.dirname(usecaseFilePath);
    final absoluteTarget = p.normalize(p.join(repoDir, importUri));
    return p.relative(absoluteTarget, from: usecaseDir).replaceAll('\\', '/');
  }

  static String _formatImport(String uri, List<String>? showNames) {
    if (showNames != null && showNames.isNotEmpty) {
      return "import '$uri' show ${showNames.join(', ')};";
    }
    return "import '$uri';";
  }

  static int _compareImports(String a, String b) {
    final aUri = _extractUri(a);
    final bUri = _extractUri(b);

    int category(String uri) {
      if (uri.startsWith('dart:')) return 0;
      if (uri.startsWith('package:')) return 1;
      return 2;
    }

    final categoryCompare = category(aUri).compareTo(category(bUri));
    if (categoryCompare != 0) {
      return categoryCompare;
    }

    return aUri.compareTo(bUri);
  }

  static String _extractUri(String importLine) {
    final start = importLine.indexOf("'") + 1;
    final end = importLine.lastIndexOf("'");
    if (start <= 0 || end <= start) {
      return importLine;
    }
    return importLine.substring(start, end);
  }
}
