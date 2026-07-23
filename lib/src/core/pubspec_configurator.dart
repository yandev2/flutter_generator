// ignore_for_file: avoid_print
import 'dart:io';

import 'package:yaml/yaml.dart';

import 'project_dependencies.dart';

/// Merge dependencies dan assets ke pubspec.yaml project target.
class PubspecConfigurator {
  PubspecConfigurator(this.projectRoot);

  final String projectRoot;

  bool apply() {
    final pubspecFile = File('$projectRoot/pubspec.yaml');
    if (!pubspecFile.existsSync()) {
      print('⚠️ pubspec.yaml tidak ditemukan. Skip update dependencies.');
      return false;
    }

    try {
      final content = pubspecFile.readAsStringSync();
      final doc = loadYaml(content);
      if (doc is! YamlMap) {
        print('⚠️ pubspec.yaml tidak valid. Skip update dependencies.');
        return false;
      }

      final root = _toPlainMap(doc);
      _mergeEnvironment(root);
      _mergeDependencySection(
        root,
        'dependencies',
        ProjectDependencies.dependencies,
      );
      _mergeDependencySection(
        root,
        'dev_dependencies',
        ProjectDependencies.devDependencies,
      );
      _mergeFlutterAssets(root);

      pubspecFile.writeAsStringSync(_emitYaml(root));
      print('✅ Updated pubspec.yaml (dependencies + assets + environment)');
      return true;
    } catch (e) {
      print('⚠️ Gagal update pubspec.yaml: $e');
      return false;
    }
  }

  void _mergeEnvironment(Map<String, dynamic> root) {
    final environment = _ensureMap(root, 'environment');
    environment.putIfAbsent('sdk', () => ProjectDependencies.defaultSdkConstraint);
    environment.putIfAbsent(
      'flutter',
      () => ProjectDependencies.defaultFlutterConstraint,
    );
  }

  void _mergeDependencySection(
    Map<String, dynamic> root,
    String section,
    Map<String, String> packages,
  ) {
    final deps = _ensureMap(root, section);
    for (final entry in packages.entries) {
      deps.putIfAbsent(entry.key, () => entry.value);
    }
  }

  void _mergeFlutterAssets(Map<String, dynamic> root) {
    final flutter = _ensureMap(root, 'flutter');
    flutter.putIfAbsent('uses-material-design', () => true);

    final assetsNode = flutter['assets'];
    final assets = <String>[];

    if (assetsNode is List) {
      for (final item in assetsNode) {
        if (item is String) {
          assets.add(item);
        }
      }
    }

    for (final assetPath in ProjectDependencies.assetPaths) {
      if (!assets.contains(assetPath)) {
        assets.add(assetPath);
      }
    }

    flutter['assets'] = assets;
  }

  Map<String, dynamic> _ensureMap(Map<String, dynamic> root, String key) {
    final value = root[key];
    if (value is Map<String, dynamic>) {
      return value;
    }

    final map = <String, dynamic>{};
    root[key] = map;
    return map;
  }

  Map<String, dynamic> _toPlainMap(YamlMap source) {
    final map = <String, dynamic>{};
    for (final entry in source.entries) {
      final key = entry.key.toString();
      map[key] = _toPlainValue(entry.value);
    }
    return map;
  }

  dynamic _toPlainValue(dynamic value) {
    if (value is YamlMap) {
      return _toPlainMap(value);
    }
    if (value is YamlList) {
      return value.map(_toPlainValue).toList();
    }
    return value;
  }

  String _emitYaml(Map<String, dynamic> root) {
    final buffer = StringBuffer();
    _writeMap(buffer, root, 0);
    return buffer.toString();
  }

  void _writeMap(StringBuffer buffer, Map<String, dynamic> map, int indent) {
    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;
      final prefix = '  ' * indent;

      if (value is Map<String, dynamic>) {
        buffer.writeln('$prefix$key:');
        _writeMap(buffer, value, indent + 1);
      } else if (value is List) {
        buffer.writeln('$prefix$key:');
        for (final item in value) {
          if (item is Map<String, dynamic>) {
            buffer.writeln('$prefix  -');
            _writeMap(buffer, item, indent + 2);
          } else {
            buffer.writeln('$prefix  - $item');
          }
        }
      } else if (value is String) {
        buffer.writeln("$prefix$key: '$value'");
      } else {
        buffer.writeln('$prefix$key: $value');
      }
    }
  }
}
