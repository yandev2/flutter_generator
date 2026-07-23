import 'dart:io';

import 'package:flutter_generator/src/core/pubspec_configurator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PubspecConfigurator', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('pubspec_configurator_test_');
    });

    tearDown(() {
      if (tempDir.existsSync()) {
        tempDir.deleteSync(recursive: true);
      }
    });

    test('adds environment sdk and flutter when missing', () {
      File('${tempDir.path}/pubspec.yaml').writeAsStringSync('''
name: test_app
description: test
version: 1.0.0

dependencies:
  flutter:
    sdk: flutter
''');

      expect(PubspecConfigurator(tempDir.path).apply(), isTrue);

      final content = File('${tempDir.path}/pubspec.yaml').readAsStringSync();
      expect(content, contains('environment:'));
      expect(content, contains("sdk: '^3.8.0'"));
      expect(content, contains("flutter: '>=3.32.0'"));
    });

    test('does not override existing dependency versions', () {
      File('${tempDir.path}/pubspec.yaml').writeAsStringSync('''
name: test_app
description: test
version: 1.0.0

environment:
  sdk: ^3.12.0

dependencies:
  flutter:
    sdk: flutter
  dio: ^5.0.0
''');

      expect(PubspecConfigurator(tempDir.path).apply(), isTrue);

      final content = File('${tempDir.path}/pubspec.yaml').readAsStringSync();
      expect(content, contains("sdk: '^3.12.0'"));
      expect(content, contains("flutter: '>=3.32.0'"));
      expect(content, contains("dio: '^5.0.0'"));
      expect(content, isNot(contains("dio: '^5.10.0'")));
    });

    test('appends assets without removing existing ones', () {
      File('${tempDir.path}/pubspec.yaml').writeAsStringSync('''
name: test_app
description: test
version: 1.0.0

dependencies:
  flutter:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/custom/
''');

      expect(PubspecConfigurator(tempDir.path).apply(), isTrue);

      final content = File('${tempDir.path}/pubspec.yaml').readAsStringSync();
      expect(content, contains('- assets/custom/'));
      expect(content, contains('- .env'));
      expect(content, contains('- assets/images/'));
    });
  });
}
