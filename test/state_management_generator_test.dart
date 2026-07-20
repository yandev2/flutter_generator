import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/riverpod_presentation_builder.dart';
import 'package:flutter_generator/src/core/route_injector.dart';

void main() {
  group('RiverpodPresentationBuilder', () {
    final builder = RiverpodPresentationBuilder();

    test('state template uses Freezed immutable class', () {
      final code = builder.buildState('login');

      expect(code, contains("import 'package:freezed_annotation/freezed_annotation.dart';"));
      expect(code, contains("part 'login_state.freezed.dart';"));
      expect(code, contains('@freezed'));
      expect(code, contains('abstract class LoginState with _\$LoginState'));
      expect(code, contains('const factory LoginState('));
      expect(code, contains('@Default(false) bool isLoading'));
      expect(code, isNot(contains('.obs')));
    });

    test('provider template uses Riverpod code-gen Notifier', () {
      final code = builder.buildProvider('login');

      expect(
        code,
        contains("import 'package:riverpod_annotation/riverpod_annotation.dart';"),
      );
      expect(code, contains("part 'login_provider.g.dart';"));
      expect(code, contains('@riverpod'));
      expect(code, contains('class Login extends _\$Login'));
      expect(code, contains('LoginState build()'));
      expect(code, isNot(contains('package:get_x_master')));
      expect(code, isNot(contains('GetxController')));
    });

    test('view template uses ConsumerWidget + ref.watch', () {
      final code = builder.buildView('login');

      expect(
        code,
        contains("import 'package:flutter_riverpod/flutter_riverpod.dart';"),
      );
      expect(code, contains('class LoginView extends ConsumerWidget'));
      expect(code, contains('final theme = Theme.of(context);'));
      expect(code, contains('ref.watch(loginProvider)'));
      expect(code, contains('theme.textTheme.titleLarge'));
      expect(code, contains('WidgetRef ref'));
      expect(code, isNot(contains('ReactiveGetView')));
      expect(code, isNot(contains('GetView<')));
      expect(code, isNot(contains('package:get_x_master')));
    });
  });

  group('InitBuilder templates', () {
    test('no template references GetX packages', () {
      final templates = [
        InitTemplate.tabNavigationState,
        InitTemplate.tabNavigationProvider,
        InitTemplate.authProvider,
        InitTemplate.apiClientProvider,
        InitTemplate.sharedPreferencesProvider,
        InitTemplate.appRouter,
        InitTemplate.routePaths,
        InitTemplate.themeProvider,
        InitTemplate.main,
        InitTemplate.splashProvider,
        InitTemplate.splashView,
        InitTemplate.dashboardState,
        InitTemplate.dashboardProvider,
        InitTemplate.dashboardView,
        InitTemplate.analysisOptions,
      ];

      for (final template in templates) {
        expect(template, isNot(contains('package:get_x_master')));
        expect(template, isNot(contains('package:get/get.dart')));
        expect(template, isNot(contains('GetMaterialApp')));
        expect(template, isNot(contains('ReactiveGetView')));
      }
    });

    test('provider templates use Riverpod annotation', () {
      final providerTemplates = [
        InitTemplate.tabNavigationProvider,
        InitTemplate.authProvider,
        InitTemplate.apiClientProvider,
        InitTemplate.sharedPreferencesProvider,
        InitTemplate.appRouter,
        InitTemplate.themeProvider,
        InitTemplate.splashProvider,
        InitTemplate.dashboardProvider,
      ];

      for (final template in providerTemplates) {
        expect(
          template,
          contains('package:riverpod_annotation/riverpod_annotation.dart'),
        );
      }
    });

    test('global providers use keepAlive', () {
      expect(InitTemplate.authProvider, contains('@Riverpod(keepAlive: true)'));
      expect(
        InitTemplate.apiClientProvider,
        contains('@Riverpod(keepAlive: true)'),
      );
      expect(
        InitTemplate.sharedPreferencesProvider,
        contains('@Riverpod(keepAlive: true)'),
      );
      expect(InitTemplate.themeProvider, contains('@Riverpod(keepAlive: true)'));
    });

    test('main uses ProviderScope + MaterialApp.router', () {
      final code = InitTemplate.main;

      expect(
        code,
        contains("import 'package:flutter_riverpod/flutter_riverpod.dart';"),
      );
      expect(code, contains('ProviderScope('));
      expect(code, contains('MaterialApp.router('));
      expect(code, contains('class MyApp extends ConsumerWidget'));
      expect(code, contains('ref.watch(appRouterProvider)'));
      expect(code, isNot(contains('Obx(')));
    });

    test('app router uses go_router GoRouter', () {
      final code = InitTemplate.appRouter;

      expect(code, contains("import 'package:go_router/go_router.dart';"));
      expect(code, contains('GoRouter appRouter(Ref ref)'));
      expect(code, contains('GoRoute('));
      expect(code, contains('RoutePaths.splash'));
    });

    test('dashboard view uses ConsumerWidget + ref.watch', () {
      final code = InitTemplate.dashboardView;

      expect(code, contains('class DashboardView extends ConsumerWidget'));
      expect(code, contains('final theme = Theme.of(context);'));
      expect(code, contains('ref.watch(dashboardProvider)'));
      expect(code, contains('theme.textTheme.headlineMedium'));
      expect(code, isNot(contains('Obx(')));
    });

    test('splash view uses Theme.of(context)', () {
      final code = InitTemplate.splashView;

      expect(code, contains('final theme = Theme.of(context);'));
      expect(code, contains('theme.colorScheme.surface'));
    });

    test('dashboard state uses Freezed', () {
      final code = InitTemplate.dashboardState;

      expect(code, contains('@freezed'));
      expect(code, contains(r'abstract class DashboardState with _\$DashboardState'));
      expect(code, contains("part 'dashboard_state.freezed.dart';"));
    });

    test('tab navigation state uses Freezed with custom method', () {
      final code = InitTemplate.tabNavigationState;

      expect(code, contains('@freezed'));
      expect(code, contains(r'abstract class TabNavigationState with _\$TabNavigationState'));
      expect(code, contains('bool isVisited(int index)'));
      expect(code, contains("part 'tab_navigation_state.freezed.dart';"));
    });

    test('tab navigation provider imports separate state file', () {
      final code = InitTemplate.tabNavigationProvider;

      expect(code, contains("import 'tab_navigation_state.dart';"));
      expect(code, isNot(contains('@freezed')));
    });

    test('dashboard notifier mutates state via copyWith', () {
      final code = InitTemplate.dashboardProvider;

      expect(code, contains('class Dashboard extends'));
      expect(code, contains('@riverpod'));
      expect(code, contains('state = state.copyWith('));
    });

    test('theme provider is a ThemeMode Notifier', () {
      final code = InitTemplate.themeProvider;

      expect(code, contains('class AppThemeMode extends'));
      expect(code, contains('ThemeMode build()'));
    });

    test('analysis_options enables riverpod_lint plugin', () {
      final code = InitTemplate.analysisOptions;

      expect(code, contains('include: package:flutter_lints/flutter.yaml'));
      expect(code, contains('plugins:'));
      expect(code, contains('riverpod_lint: ^3.1.4'));
      expect(code, isNot(contains('custom_lint')));
      expect(code, isNot(contains('analyzer:')));
    });
  });

  group('RouteInjector scaffold (go_router)', () {
    test('creates app_router.dart with go_router import', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'route_injector_riverpod_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/core/router';
      Directory(routeDir).createSync(recursive: true);

      RouteInjector(routeDir).inject('auth', 'login');

      final appRouterFile = File('$routeDir/app_router.dart');
      expect(appRouterFile.existsSync(), isTrue);

      final content = appRouterFile.readAsStringSync();
      expect(content, contains("import 'package:go_router/go_router.dart';"));
      expect(content, contains('GoRoute('));
      expect(content, contains('RoutePaths.login'));
      expect(content, contains('const LoginView()'));
      expect(content, isNot(contains('package:get_x_master')));
      expect(content, isNot(contains('GetPage')));
    });

    test('injects route path constant into route_paths.dart', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'route_injector_paths_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/core/router';
      Directory(routeDir).createSync(recursive: true);

      RouteInjector(routeDir).inject('auth', 'login');

      final content = File('$routeDir/route_paths.dart').readAsStringSync();
      expect(content, contains("static const login = '/login';"));
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

      final routeDir = '${tempDir.path}/lib/core/router';
      Directory(routeDir).createSync(recursive: true);

      final injector = RouteInjector(routeDir);
      injector.inject('auth', 'login');
      injector.inject('auth', 'login');

      final content = File('$routeDir/app_router.dart').readAsStringSync();
      final viewImportCount = 'login_view.dart'.allMatches(content).length;
      final goRouteCount = 'RoutePaths.login'.allMatches(content).length;

      expect(viewImportCount, 1);
      expect(goRouteCount, 1);
    });

    test('skips injection when route already exists', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'route_injector_existing_test_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final routeDir = '${tempDir.path}/lib/core/router';
      Directory(routeDir).createSync(recursive: true);

      final appRouterFile = File('$routeDir/app_router.dart');
      appRouterFile.writeAsStringSync('''
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/auth/views/login_view.dart';
import 'route_paths.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
      GoRoute(
        path: RoutePaths.login,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
''');

      RouteInjector(routeDir).inject('auth', 'login');

      final content = appRouterFile.readAsStringSync();
      expect('login_view.dart'.allMatches(content).length, 1);
      expect('RoutePaths.login'.allMatches(content).length, 1);
    });
  });
}

/// Test accessors for private InitBuilder template strings.
///
/// Templates are `static const String` fields inside
/// `lib/src/builder/init_builder.dart`, so they are read via source parsing.
abstract final class InitTemplate {
  static String get tabNavigationState => _read('_tabNavigationStateTemplate');
  static String get tabNavigationProvider =>
      _read('_tabNavigationProviderTemplate');
  static String get authProvider => _read('_authProviderTemplate');
  static String get apiClientProvider => _read('_apiClientProviderTemplate');
  static String get sharedPreferencesProvider =>
      _read('_sharedPreferencesProviderTemplate');
  static String get appRouter => _read('_appRouterTemplate');
  static String get routePaths => _read('_routePathsTemplate');
  static String get themeProvider => _read('_themeProviderTemplate');
  static String get main => _read('_mainTemplate');
  static String get splashProvider => _read('_splashProviderTemplate');
  static String get splashView => _read('_splashViewTemplate');
  static String get dashboardState => _read('_dashboardStateTemplate');
  static String get dashboardProvider => _read('_dashboardProviderTemplate');
  static String get dashboardView => _read('_dashboardViewTemplate');
  static String get analysisOptions => _read('_analysisOptionsTemplate');
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
