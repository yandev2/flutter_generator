import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/getx_presentation_builder.dart';
import 'package:flutter_generator/src/core/route_injector.dart';

void main() {
  group('GetxPresentationBuilder', () {
    final builder = GetxPresentationBuilder();

    test('controller template uses get_x_master', () {
      final code = builder.buildController('login');

      expect(code, contains("import 'package:get_x_master/get_x_master.dart';"));
      expect(code, contains('class LoginController extends GetxController'));
      expect(code, isNot(contains('package:get/get.dart')));
    });

    test('binding template uses smartLazyPut', () {
      final code = builder.buildBinding('login');

      expect(code, contains("import 'package:get_x_master/get_x_master.dart';"));
      expect(code, contains('Get.smartLazyPut<LoginController>'));
      expect(code, isNot(contains('Get.lazyPut')));
    });

    test('view template uses ReactiveGetView', () {
      final code = builder.buildView('login');

      expect(code, contains("import 'package:get_x_master/get_x_master.dart';"));
      expect(code, contains('extends ReactiveGetView<LoginController>'));
      expect(code, isNot(contains('extends GetView<')));
      expect(code, isNot(contains('Obx(')));
    });
  });

  group('InitBuilder templates', () {
    test('do not reference package:get', () {
      final templates = [
        InitBuilderLazyTabNavigationTemplate.content,
        InitBuilderTabLoadableTemplate.content,
        InitBuilderAuthServiceTemplate.content,
        InitBuilderDiTemplate.content,
        InitBuilderAppRouteTemplate.content,
        InitBuilderThemeManagerTemplate.content,
        InitBuilderMainTemplate.content,
        InitBuilderSplashBindingTemplate.content,
        InitBuilderSplashControllerTemplate.content,
        InitBuilderSplashViewTemplate.content,
        InitBuilderDashboardBindingTemplate.content,
        InitBuilderDashboardControllerTemplate.content,
        InitBuilderDashboardViewTemplate.content,
      ];

      for (final template in templates) {
        expect(template, isNot(contains('package:get/get.dart')));
        expect(template, contains('package:get_x_master/get_x_master.dart'));
      }
    });

    test('dashboard view template uses ReactiveGetView without Obx', () {
      final code = InitBuilderDashboardViewTemplate.content;

      expect(code, contains('ReactiveGetView<DashboardController>'));
      expect(code, isNot(contains('Obx(')));
    });

    test('theme manager keeps isDarkMode inside class', () {
      final code = InitBuilderThemeManagerTemplate.content;

      expect(code, contains('class ThemeManager extends GetxController'));
      expect(code, contains('final isDarkMode = false.obs;'));
      expect(code, isNot(contains('\n final isDarkMode = false.obs;\nclass ThemeManager')));
    });

    test('binding templates use smartLazyPut', () {
      expect(
        InitBuilderSplashBindingTemplate.content,
        contains('Get.smartLazyPut<SplashScreenController>'),
      );
      expect(
        InitBuilderDashboardBindingTemplate.content,
        contains('Get.smartLazyPut<DashboardController>'),
      );
      expect(
        InitBuilderDiTemplate.content,
        contains('Get.smartLazyPut<ApiClient>'),
      );
    });
  });

  group('RouteInjector scaffold', () {
    test('creates app_route.dart with get_x_master import', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'state_management_generator_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/service/route';
      Directory(routeDir).createSync(recursive: true);

      RouteInjector(routeDir).inject('auth', 'login');

      final appRouteFile = File('$routeDir/app_route.dart');
      expect(appRouteFile.existsSync(), isTrue);

      final content = appRouteFile.readAsStringSync();
      expect(content, contains("import 'package:get_x_master/get_x_master.dart';"));
      expect(content, isNot(contains('package:get/get.dart')));
    });

    test('does not duplicate imports when injecting same page twice', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'route_injector_duplicate_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/service/route';
      Directory(routeDir).createSync(recursive: true);

      final injector = RouteInjector(routeDir);
      injector.inject('auth', 'login');
      injector.inject('auth', 'login');

      final content = File('$routeDir/app_route.dart').readAsStringSync();
      final bindingImportCount = "login_binding.dart".allMatches(content).length;
      final viewImportCount = "login_view.dart".allMatches(content).length;
      final getPageCount =
          'RouteName.login'.allMatches(content).length;

      expect(bindingImportCount, 1);
      expect(viewImportCount, 1);
      expect(getPageCount, 1);
    });

    test('skips import injection when route already exists', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'route_injector_existing_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/service/route';
      Directory(routeDir).createSync(recursive: true);

      final appRouteFile = File('$routeDir/app_route.dart');
      appRouteFile.writeAsStringSync('''
import 'package:get_x_master/get_x_master.dart';
import 'route_name.dart';
import '../../presentation/auth/bindings/login_binding.dart';
import '../../presentation/auth/views/login_view.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
''');

      RouteInjector(routeDir).inject('auth', 'login');

      final content = appRouteFile.readAsStringSync();
      expect("login_binding.dart".allMatches(content).length, 1);
      expect("login_view.dart".allMatches(content).length, 1);
    });
  });
}

/// Test accessors for private InitBuilder template strings.
abstract final class InitBuilderLazyTabNavigationTemplate {
  static String get content => _read('_lazyTabNavigationTemplate');
}

abstract final class InitBuilderTabLoadableTemplate {
  static String get content => _read('_tabLoadableTemplate');
}

abstract final class InitBuilderAuthServiceTemplate {
  static String get content => _read('_authServiceTemplate');
}

abstract final class InitBuilderDiTemplate {
  static String get content => _read('_diTemplate');
}

abstract final class InitBuilderAppRouteTemplate {
  static String get content => _read('_appRouteTemplate');
}

abstract final class InitBuilderThemeManagerTemplate {
  static String get content => _read('_themeManagerTemplate');
}

abstract final class InitBuilderMainTemplate {
  static String get content => _read('_mainTemplate');
}

abstract final class InitBuilderSplashBindingTemplate {
  static String get content => _read('_splashBindingTemplate');
}

abstract final class InitBuilderSplashControllerTemplate {
  static String get content => _read('_splashControllerTemplate');
}

abstract final class InitBuilderSplashViewTemplate {
  static String get content => _read('_splashViewTemplate');
}

abstract final class InitBuilderDashboardBindingTemplate {
  static String get content => _read('_dashboardBindingTemplate');
}

abstract final class InitBuilderDashboardControllerTemplate {
  static String get content => _read('_dashboardControllerTemplate');
}

abstract final class InitBuilderDashboardViewTemplate {
  static String get content => _read('_dashboardViewTemplate');
}

String _read(String fieldName) {
  final match = RegExp(
    "static const String $fieldName = '''([\\s\\S]*?)''';",
  ).firstMatch(_initBuilderSource);

  if (match == null) {
    fail('Template $fieldName not found in init_builder.dart');
  }

  return match.group(1)!;
}

final String _initBuilderSource = File(
  'lib/src/builder/init_builder.dart',
).readAsStringSync();
