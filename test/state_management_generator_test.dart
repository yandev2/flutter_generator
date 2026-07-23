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

    test('page template uses ConsumerWidget + ref.watch + notifier', () {
      final code = builder.buildPage('login');

      expect(
        code,
        contains("import 'package:flutter_riverpod/flutter_riverpod.dart';"),
      );
      expect(code, contains('class LoginPage extends ConsumerWidget'));
      expect(code, contains('final theme = Theme.of(context);'));
      expect(code, contains('final loginState = ref.watch(loginProvider);'));
      expect(code, contains('final loginNotifier = ref.read(loginProvider.notifier);'));
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
        InitTemplate.bootstrap,
        InitTemplate.app,
        InitTemplate.splashProvider,
        InitTemplate.splashPage,
        InitTemplate.dashboardState,
        InitTemplate.dashboardProvider,
        InitTemplate.dashboardPage,
        InitTemplate.analysisOptions,
        InitTemplate.envConfig,
        InitTemplate.exceptionMapper,
        InitTemplate.authRepository,
        InitTemplate.loginPage,
        InitTemplate.assetPaths,
        InitTemplate.sharedPreferencesStorage,
        InitTemplate.riverpodSqflite,
        InitTemplate.networkInfo,
        InitTemplate.networkInfoProvider,
        InitTemplate.contextExtension,
        InitTemplate.stringExtension,
        InitTemplate.colorExtension,
        InitTemplate.validators,
        InitTemplate.helpers,
        InitTemplate.loadingWidget,
        InitTemplate.errorWidget,
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
        InitTemplate.sharedPreferencesStorage,
        InitTemplate.networkInfoProvider,
        InitTemplate.riverpodSqflite,
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
      expect(
        InitTemplate.sharedPreferencesStorage,
        contains('@Riverpod(keepAlive: true)'),
      );
      expect(
        InitTemplate.networkInfoProvider,
        contains('@Riverpod(keepAlive: true)'),
      );
      expect(
        InitTemplate.riverpodSqflite,
        contains('@Riverpod(keepAlive: true)'),
      );
    });

    test('main delegates to bootstrap', () {
      final code = InitTemplate.main;

      expect(code, contains("import 'app/bootstrap.dart';"));
      expect(code, contains('await bootstrap();'));
      expect(code, isNot(contains('ProviderScope(')));
    });

    test('bootstrap uses ProviderScope + App widget', () {
      final code = InitTemplate.bootstrap;

      expect(
        code,
        contains("import 'package:flutter_riverpod/flutter_riverpod.dart';"),
      );
      expect(code, contains("import 'package:flutter_dotenv/flutter_dotenv.dart';"));
      expect(code, contains("await dotenv.load(fileName: '.env');"));
      expect(code, contains('ProviderScope('));
      expect(code, contains('child: const App()'));
      expect(code, contains('sharedPreferencesProvider.overrideWithValue'));
    });

    test('env config reads values from flutter_dotenv', () {
      final code = InitTemplate.envConfig;

      expect(code, contains("import 'package:flutter_dotenv/flutter_dotenv.dart';"));
      expect(code, contains("dotenv.env['BASE_URL']"));
      expect(code, contains("dotenv.env['APP_NAME']"));
    });

    test('api client uses EnvConfig for base URL and timeouts', () {
      final code = InitTemplate.apiClient;

      expect(code, contains("import '../constants/env_config.dart';"));
      expect(code, contains('baseUrl: EnvConfig.baseUrl'));
      expect(code, contains('EnvConfig.connectionTimeout'));
      expect(code, isNot(contains('AppConstants.baseUrl')));
    });

    test('app uses MaterialApp.router', () {
      final code = InitTemplate.app;

      expect(code, contains('class App extends ConsumerWidget'));
      expect(code, contains('MaterialApp.router('));
      expect(code, contains('title: EnvConfig.appName'));
      expect(code, contains('ref.watch(appRouterProvider)'));
      expect(code, isNot(contains('Obx(')));
    });

    test('app router uses go_router GoRouter', () {
      final code = InitTemplate.appRouter;

      expect(code, contains("import 'package:go_router/go_router.dart';"));
      expect(code, contains('GoRouter appRouter(Ref ref)'));
      expect(code, contains('refreshListenable: refreshNotifier'));
      expect(code, contains('redirect: (context, state)'));
      expect(code, contains('RoutePaths.login'));
      expect(code, contains('const LoginPage()'));
      expect(code, contains('const SplashPage()'));
      expect(code, contains('const DashboardPage()'));
    });

    test('auth provider persists token via SharedPreferences', () {
      final code = InitTemplate.authProvider;

      expect(code, contains('AppConstants.tokenKey'));
      expect(code, contains('sharedPreferencesProvider'));
      expect(code, contains('apiClientProvider'));
      expect(code, contains('setToken(token)'));
      expect(code, contains('clearToken()'));
    });

    test('exception mapper converts exceptions to failures', () {
      final code = InitTemplate.exceptionMapper;

      expect(code, contains('Failure toFailure(Object error)'));
      expect(code, contains('UnauthorizedException'));
      expect(code, contains('Future<Either<Failure, T>> guard'));
    });

    test('auth repository skeleton uses Either and Failure', () {
      final code = InitTemplate.authRepository;

      expect(code, contains('abstract class AuthRepository'));
      expect(code, contains('Future<Either<Failure, bool>> login'));
      expect(code, contains('Future<Either<Failure, bool>> logout'));
    });

    test('splash page redirects based on auth state', () {
      final code = InitTemplate.splashPage;

      expect(code, contains('authProvider'));
      expect(code, contains('RoutePaths.login'));
      expect(code, contains('RoutePaths.dashboard'));
    });

    test('core templates include asset paths and validators', () {
      expect(InitTemplate.assetPaths, contains('abstract class AssetPaths'));
      expect(InitTemplate.validators, contains('String? email(String? value)'));
      expect(InitTemplate.validators, contains('String? password(String? value'));
    });

    test('riverpod_sqflite template uses JsonSqFliteStorage', () {
      final code = InitTemplate.riverpodSqflite;

      expect(code, contains("import 'package:riverpod_sqflite/riverpod_sqflite.dart';"));
      expect(code, contains('JsonSqFliteStorage.open'));
      expect(code, contains('riverpod.db'));
    });

    test('network info checks connectivity', () {
      final code = InitTemplate.networkInfo;

      expect(code, contains('abstract class NetworkInfo'));
      expect(code, contains('Future<bool> get isConnected'));
      expect(code, contains('ConnectivityResult.none'));
    });

    test('app error widget avoids Flutter ErrorWidget name clash', () {
      final code = InitTemplate.errorWidget;

      expect(code, contains('class AppErrorWidget'));
      expect(code, isNot(contains('class ErrorWidget extends')));
    });

    test('dashboard page uses ConsumerWidget + ref.watch + notifier', () {
      final code = InitTemplate.dashboardPage;

      expect(code, contains('class DashboardPage extends ConsumerWidget'));
      expect(code, contains('final theme = Theme.of(context);'));
      expect(code, contains('final dashboardState = ref.watch(dashboardProvider);'));
      expect(code, contains('final dashboardNotifier = ref.read(dashboardProvider.notifier);'));
      expect(code, contains('theme.textTheme.headlineMedium'));
      expect(code, isNot(contains('Obx(')));
    });

    test('splash page uses Theme.of(context)', () {
      final code = InitTemplate.splashPage;

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

      final routeDir = '${tempDir.path}/lib/app/router';
      Directory(routeDir).createSync(recursive: true);

      RouteInjector(routeDir).inject('auth', 'login');

      final appRouterFile = File('$routeDir/app_router.dart');
      expect(appRouterFile.existsSync(), isTrue);

      final content = appRouterFile.readAsStringSync();
      expect(content, contains("import 'package:go_router/go_router.dart';"));
      expect(content, contains('GoRoute('));
      expect(content, contains('RoutePaths.login'));
      expect(content, contains('const LoginPage()'));
      expect(
        content,
        contains(
          "import '../../features/auth/presentation/pages/login_page.dart';",
        ),
      );
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

      final routeDir = '${tempDir.path}/lib/app/router';
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

      final routeDir = '${tempDir.path}/lib/app/router';
      Directory(routeDir).createSync(recursive: true);

      final injector = RouteInjector(routeDir);
      injector.inject('auth', 'login');
      injector.inject('auth', 'login');

      final content = File('$routeDir/app_router.dart').readAsStringSync();
      final pageImportCount = 'login_page.dart'.allMatches(content).length;
      final goRouteCount = 'RoutePaths.login'.allMatches(content).length;

      expect(pageImportCount, 1);
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

      final routeDir = '${tempDir.path}/lib/app/router';
      Directory(routeDir).createSync(recursive: true);

      final appRouterFile = File('$routeDir/app_router.dart');
      appRouterFile.writeAsStringSync('''
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import 'route_paths.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
      GoRoute(
        path: RoutePaths.login,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
''');

      RouteInjector(routeDir).inject('auth', 'login');

      final content = appRouterFile.readAsStringSync();
      expect('login_page.dart'.allMatches(content).length, 1);
      expect('RoutePaths.login'.allMatches(content).length, 1);
    });
  });
}

/// Test accessors for private InitBuilder template strings.
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
  static String get bootstrap => _read('_bootstrapTemplate');
  static String get app => _read('_appTemplate');
  static String get splashProvider => _read('_splashProviderTemplate');
  static String get splashPage => _read('_splashPageTemplate');
  static String get dashboardState => _read('_dashboardStateTemplate');
  static String get dashboardProvider => _read('_dashboardProviderTemplate');
  static String get dashboardPage => _read('_dashboardPageTemplate');
  static String get analysisOptions => _read('_analysisOptionsTemplate');
  static String get envConfig => _read('_envConfigTemplate');
  static String get apiClient => _read('_apiClientTemplate');
  static String get exceptionMapper => _read('_exceptionMapperTemplate');
  static String get authRepository => _read('_authRepositoryTemplate');
  static String get loginPage => _read('_loginPageTemplate');
  static String get assetPaths => _read('_assetPathsTemplate');
  static String get sharedPreferencesStorage =>
      _read('_sharedPreferencesStorageTemplate');
  static String get riverpodSqflite => _read('_riverpodSqfliteTemplate');
  static String get networkInfo => _read('_networkInfoTemplate');
  static String get networkInfoProvider =>
      _read('_networkInfoProviderTemplate');
  static String get contextExtension => _read('_contextExtensionTemplate');
  static String get stringExtension => _read('_stringExtensionTemplate');
  static String get colorExtension => _read('_colorExtensionTemplate');
  static String get validators => _read('_validatorsTemplate');
  static String get helpers => _read('_helpersTemplate');
  static String get loadingWidget => _read('_loadingWidgetTemplate');
  static String get errorWidget => _read('_errorWidgetTemplate');
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
