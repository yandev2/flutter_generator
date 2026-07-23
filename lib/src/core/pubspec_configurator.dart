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

      final root = _cloneMap(doc);
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
      print('✅ Updated pubspec.yaml (dependencies + assets)');
      return true;
    } catch (e) {
      print('⚠️ Gagal update pubspec.yaml: $e');
      return false;
    }
  }

  void _mergeEnvironment(YamlMap root) {
    final environment = _ensureMap(root, 'environment');
    environment.putIfAbsent('sdk', () => '^3.8.0');
    environment.putIfAbsent('flutter', () => '>=3.32.0');
  }

  void _mergeDependencySection(
    YamlMap root,
    String section,
    Map<String, String> packages,
  ) {
    final deps = _ensureMap(root, section);
    for (final entry in packages.entries) {
      deps.putIfAbsent(entry.key, () => entry.value);
    }
  }

  void _mergeFlutterAssets(YamlMap root) {
    final flutter = _ensureMap(root, 'flutter');
    flutter.putIfAbsent('uses-material-design', () => true);

    final assetsNode = flutter['assets'];
    final assets = <String>[];

    if (assetsNode is YamlList) {
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

    flutter['assets'] = YamlList.wrap(assets);
  }

  YamlMap _ensureMap(YamlMap root, String key) {
    final value = root[key];
    if (value is YamlMap) {
      return value;
    }

    final map = YamlMap();
    root[key] = map;
    return map;
  }

  YamlMap _cloneMap(YamlMap source) {
    final clone = YamlMap();
    for (final entry in source.entries) {
      final key = entry.key;
      final value = entry.value;
      if (value is YamlMap) {
        clone[key] = _cloneMap(value);
      } else if (value is YamlList) {
        clone[key] = YamlList.wrap(
          value.map((item) {
            if (item is YamlMap) {
              return _cloneMap(item);
            }
            return item;
          }).toList(),
        );
      } else {
        clone[key] = value;
      }
    }
    return clone;
  }

  String _emitYaml(YamlMap root) {
    final buffer = StringBuffer();
    _writeMap(buffer, root, 0);
    return buffer.toString();
  }

  void _writeMap(StringBuffer buffer, YamlMap map, int indent) {
    for (final entry in map.entries) {
      final key = entry.key.toString();
      final value = entry.value;
      final prefix = '  ' * indent;

      if (value is YamlMap) {
        buffer.writeln('$prefix$key:');
        _writeMap(buffer, value, indent + 1);
      } else if (value is YamlList) {
        buffer.writeln('$prefix$key:');
        for (final item in value) {
          if (item is YamlMap) {
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
