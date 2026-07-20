// ignore_for_file: avoid_print
import 'dart:io';

import '../core/build_runner_reminder.dart';

class InitBuilder {
  static void build() {
    print('🚀 Memulai inisialisasi struktur project...');

    final directories = [
      'lib/core/const',
      'lib/core/error',
      'lib/core/navigation',
      'lib/core/network',
      'lib/core/router',
      'lib/core/theme',
      'lib/data/model',
      'lib/data/repository_impl',
      'lib/data/source',
      'lib/domain/entity',
      'lib/domain/repository',
      'lib/domain/usecase',
      'lib/presentation/splash/providers',
      'lib/presentation/splash/views',
      'lib/presentation/dashboard/providers',
      'lib/presentation/dashboard/states',
      'lib/presentation/dashboard/views',
      'lib/shared/auth',
      'lib/shared/providers',
    ];

    for (var dir in directories) {
      Directory(dir).createSync(recursive: true);
      print('✅ Created directory: $dir');
    }

    _createFile('lib/core/const/app_constants.dart', _appConstantsTemplate);
    _createFile('lib/core/error/failures.dart', _failureTemplate);
    _createFile('lib/core/error/exceptions.dart', _exceptionTemplate);
    _createFile(
      'lib/core/navigation/tab_navigation_state.dart',
      _tabNavigationStateTemplate,
    );
    _createFile(
      'lib/core/navigation/tab_navigation_provider.dart',
      _tabNavigationProviderTemplate,
    );
    _createFile('lib/core/network/api_client.dart', _apiClientTemplate);
    _createFile(
      'lib/core/network/api_client_provider.dart',
      _apiClientProviderTemplate,
    );
    _createFile('lib/core/router/route_paths.dart', _routePathsTemplate);
    _createFile('lib/core/router/app_router.dart', _appRouterTemplate);
    _createFile('lib/core/theme/app_theme.dart', _themeTemplate);
    _createFile('lib/core/theme/theme_provider.dart', _themeProviderTemplate);
    _createFile('lib/shared/auth/auth_provider.dart', _authProviderTemplate);
    _createFile(
      'lib/shared/providers/shared_preferences_provider.dart',
      _sharedPreferencesProviderTemplate,
    );
    _createFile('lib/main.dart', _mainTemplate);
    _createFile(
      'lib/presentation/splash/providers/splash_provider.dart',
      _splashProviderTemplate,
    );
    _createFile(
      'lib/presentation/splash/views/splash_view.dart',
      _splashViewTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/states/dashboard_state.dart',
      _dashboardStateTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/providers/dashboard_provider.dart',
      _dashboardProviderTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/views/dashboard_view.dart',
      _dashboardViewTemplate,
    );
    _createFile('analysis_options.yaml', _analysisOptionsTemplate);

    print('🎉 Inisialisasi struktur project selesai!\n');
    print(
      '📦 Pastikan Anda telah menambahkan package berikut di pubspec.yaml:',
    );
    print('dependencies:');
    print('  - flutter_riverpod: ^3.3.2');
    print('  - riverpod_annotation: ^4.0.3');
    print('  - go_router: ^17.3.0');
    print('  - dio');
    print('  - freezed_annotation: ^3.1.0');
    print('  - json_annotation: ^4.12.0');
    print('  - shared_preferences');
    print('  - intl');
    print('  - flutter_screenutil');
    print('\ndev_dependencies:');
    print('  - flutter_lints: ^6.0.0');
    print('  - build_runner: ^2.15.1');
    print('  - riverpod_generator: ^4.0.4');
    print('  - riverpod_lint: ^3.1.4');
    print('  - freezed: ^3.2.6-dev.1');
    print('  - json_serializable: ^6.14.0');
    print(
      'Silakan jalankan `flutter pub get` terlebih dahulu.',
    );
    print(
      'ℹ️ analysis_options.yaml sudah dikonfigurasi dengan plugin riverpod_lint.',
    );
    printBuildRunnerReminder();
  }

  static void _createFile(String path, String content) {
    final file = File(path);
    if (!file.existsSync()) {
      file.writeAsStringSync(content);
      print('✅ Created file: $path');
    } else {
      print('⚠️ Skipped file: $path (Already exists)');
    }
  }

  static const String _analysisOptionsTemplate = '''
include: package:flutter_lints/flutter.yaml

# Riverpod lint & refactor rules (analysis_server_plugin).
# Requires dev_dependencies: flutter_lints, riverpod_lint
# Docs: https://riverpod.dev/docs/introduction/getting_started
plugins:
  riverpod_lint: ^3.1.4
''';

  static const String _failureTemplate = '''
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// ─── FAILURES ─────────────────────────────────────────────────────────
/// Freezed Union implementation of Failures returned from the Domain layer
/// via `Either<Failure, T>`.
@freezed
abstract class Failure with _\$Failure {
  /// Server responded with an error (4xx, 5xx).
  const factory Failure.server({required String message, int? statusCode}) =
      _ServerFailure;

  /// No internet connection or server unreachable.
  const factory Failure.network({
    @Default('Tidak ada koneksi internet. Periksa jaringan Anda.')
    String message,
  }) = _NetworkFailure;

  /// User session expired or token invalid (401).
  const factory Failure.unauthorized({
    @Default('Sesi Anda telah berakhir. Silakan login kembali.') String message,
  }) = _UnauthorizedFailure;

  /// Request took too long.
  const factory Failure.timeout({
    @Default('Koneksi timeout. Silakan coba lagi.') String message,
  }) = _TimeoutFailure;

  /// Local storage/cache operation failed.
  const factory Failure.cache({
    @Default('Gagal mengakses data lokal.') String message,
  }) = _CacheFailure;

  /// Input validation failed (e.g., form errors from API).
  const factory Failure.validation({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ValidationFailure;

  /// Catch-all for unexpected errors.
  const factory Failure.unexpected({
    @Default('Terjadi kesalahan yang tidak terduga.') String message,
  }) = _UnexpectedFailure;
}
''';

  static const String _exceptionTemplate = '''
class ServerException implements Exception {
  final String message;
  final int? statusCode;

  const ServerException({required this.message, this.statusCode});

  @override
  String toString() => 'ServerException(\$statusCode): \$message';
}

/// Thrown when there is no internet connection or the server is unreachable.
class NetworkException implements Exception {
  final String message;

  const NetworkException({
    this.message = 'Tidak ada koneksi internet. Periksa jaringan Anda.',
  });

  @override
  String toString() => 'NetworkException: \$message';
}

/// Thrown when the user's token is invalid or expired (HTTP 401).
class UnauthorizedException implements Exception {
  final String message;

  const UnauthorizedException({
    this.message = 'Sesi Anda telah berakhir. Silakan login kembali.',
  });

  @override
  String toString() => 'UnauthorizedException: \$message';
}

/// Thrown when a request exceeds the allowed timeout duration.
class RequestTimeoutException implements Exception {
  final String message;

  const RequestTimeoutException({
    this.message = 'Koneksi timeout. Silakan coba lagi.',
  });

  @override
  String toString() => 'RequestTimeoutException: \$message';
}

/// Thrown when the local cache/database operation fails.
class CacheException implements Exception {
  final String message;

  const CacheException({this.message = 'Gagal mengakses data lokal.'});

  @override
  String toString() => 'CacheException: \$message';
}

/// Thrown when request data validation fails before sending.
class ValidationException implements Exception {
  final String message;
  final Map<String, dynamic>? errors;

  const ValidationException({required this.message, this.errors});

  @override
  String toString() => 'ValidationException: \$message';
}
''';

  static const String _tabNavigationStateTemplate = '''
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_navigation_state.freezed.dart';

/// State untuk navigasi tab dengan [IndexedStack].
/// [visitedIndices] dipakai untuk lazy-load: tab hanya di-build/di-fetch
/// saat pertama kali dikunjungi.
@freezed
abstract class TabNavigationState with _\$TabNavigationState {
  const TabNavigationState._();

  const factory TabNavigationState({
    @Default(0) int currentIndex,
    @Default(<int>{0}) Set<int> visitedIndices,
  }) = _TabNavigationState;

  bool isVisited(int index) => visitedIndices.contains(index);
}
''';

  static const String _tabNavigationProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'tab_navigation_state.dart';

part 'tab_navigation_provider.g.dart';

@riverpod
class TabNavigation extends _\$TabNavigation {
  @override
  TabNavigationState build() => const TabNavigationState();

  void changeTab(int index) {
    state = state.copyWith(
      currentIndex: index,
      visitedIndices: {...state.visitedIndices, index},
    );
  }
}
''';

  static const String _appConstantsTemplate = '''
abstract class AppConstants {
  static const String appName = 'Flutter App';
  static const String appVersion = '1.0.0';

  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;
  static const String baseUrl = 'https://api.example.com';

  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_key';
  static const String refreshTokenKey = 'refresh_token';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  static const String onboardingKey = 'onboarding_completed';
  static const String introduction = 'introduction';
}
''';

  static const String _apiClientTemplate = '''
import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import '../const/app_constants.dart';
import '../error/exceptions.dart';

class ApiClient {
  final Dio _dio;
  String? _token;

  ApiClient({Dio? dio})
    : _dio = dio ?? Dio(
        BaseOptions(
          baseUrl: AppConstants.baseUrl,
          connectTimeout: const Duration(milliseconds: AppConstants.connectionTimeout),
          receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (_token != null && _token!.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer \$_token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  // ── Token Management ─────────────────────────────────────────────────

  void setToken(String token) => _token = token;
  void clearToken() => _token = null;
  bool get hasToken => _token != null && _token!.isNotEmpty;

  /// Runs [action] without Authorization header, then restores prior token.
  Future<T> runWithoutAuth<T>(Future<T> Function() action) async {
    final previous = _token;
    _token = null;
    try {
      return await action();
    } finally {
      _token = previous;
    }
  }

  // ── Private Helpers ──────────────────────────────────────────────────

  dynamic _handleResponse(Response response) {
    final statusCode = response.statusCode ?? 500;
    final body = response.data;

    if (statusCode >= 200 && statusCode < 300) {
      return body;
    }
    
    return _processErrorResponse(statusCode, body);
  }
  
  dynamic _processErrorResponse(int statusCode, dynamic body) {
    final message = _extractErrorMessage(body, statusCode);

    if (statusCode == 401) {
      throw UnauthorizedException(message: message);
    }
    if (statusCode == 422) {
      throw ValidationException(
        message: message,
        errors: body is Map<String, dynamic> ? body['errors'] : null,
      );
    }
    throw ServerException(message: message, statusCode: statusCode);
  }

  String _extractErrorMessage(dynamic body, int statusCode) {
    if (body is Map<String, dynamic>) {
      return body['message'] ?? body['error'] ?? body['msg'] ?? 'Server error (\$statusCode)';
    }
    return 'Server error (\$statusCode)';
  }

  Future<dynamic> _safeRequest(Future<Response<dynamic>> Function() request) async {
    try {
      final response = await request();
      return _handleResponse(response);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout || 
          e.type == DioExceptionType.receiveTimeout || 
          e.type == DioExceptionType.sendTimeout) {
        throw const RequestTimeoutException();
      }
      if (e.type == DioExceptionType.connectionError || e.error is SocketException) {
        throw const NetworkException();
      }
      if (e.response != null) {
        return _processErrorResponse(e.response!.statusCode ?? 500, e.response!.data);
      }
      throw const NetworkException(message: 'Gagal terhubung ke server.');
    }
  }

  // ── REST Methods ─────────────────────────────────────────────────────

  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) {
    return _safeRequest(() => _dio.get(
      endpoint,
      queryParameters: query,
      options: headers != null ? Options(headers: headers) : null,
    ));
  }

  Future<dynamic> post(
    String endpoint, {
    dynamic body,
    Map<String, dynamic>? headers,
  }) {
    return _safeRequest(() => _dio.post(
      endpoint,
      data: body,
      options: headers != null ? Options(headers: headers) : null,
    ));
  }

  Future<dynamic> put(String endpoint, {dynamic body, Map<String, dynamic>? headers}) {
    return _safeRequest(() => _dio.put(
      endpoint,
      data: body,
      options: headers != null ? Options(headers: headers) : null,
    ));
  }

  Future<dynamic> patch(
    String endpoint, {
    dynamic body,
    Map<String, dynamic>? headers,
  }) {
    return _safeRequest(() => _dio.patch(
      endpoint,
      data: body,
      options: headers != null ? Options(headers: headers) : null,
    ));
  }

  Future<dynamic> delete(String endpoint, {Map<String, dynamic>? headers}) {
    return _safeRequest(() => _dio.delete(
      endpoint,
      options: headers != null ? Options(headers: headers) : null,
    ));
  }

  // ── Multipart / File Upload ──────────────────────────────────────────

  Future<dynamic> uploadFile(
    String endpoint, {
    required String filePath,
    String fileField = 'file',
    Map<String, dynamic>? fields,
    String method = 'POST',
  }) async {
    return _safeRequest(() async {
      final formDataMap = fields ?? <String, dynamic>{};
      formDataMap[fileField] = await MultipartFile.fromFile(filePath);
      final formData = FormData.fromMap(formDataMap);

      return _dio.request(
        endpoint,
        data: formData,
        options: Options(method: method),
      );
    });
  }

  Future<dynamic> uploadMultipleFiles(
    String endpoint, {
    required Map<String, dynamic> files,
    Map<String, dynamic>? fields,
    String method = 'POST',
  }) async {
    return _safeRequest(() async {
      final formDataMap = fields ?? <String, dynamic>{};
      
      for (final entry in files.entries) {
        if (entry.value is String) {
          formDataMap[entry.key] = await MultipartFile.fromFile(entry.value);
        } else if (entry.value is List) {
          final multipartList = <MultipartFile>[];
          for (final path in entry.value) {
            if (path is String && path.isNotEmpty) {
              multipartList.add(await MultipartFile.fromFile(path));
            }
          }
          formDataMap[entry.key] = multipartList;
        }
      }
      
      final formData = FormData.fromMap(formDataMap);

      return _dio.request(
        endpoint,
        data: formData,
        options: Options(method: method),
      );
    });
  }

  void dispose() {
    _dio.close();
  }
}
''';

  static const String _authProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

/// State autentikasi global. `keepAlive: true` menjaga provider tetap hidup
/// selama aplikasi berjalan (setara `Get.put(..., permanent: true)`).
@Riverpod(keepAlive: true)
class Auth extends _\$Auth {
  @override
  bool build() => false; // isLoggedIn

  Future<void> login() async {
    // TODO: Implement login logic (panggil usecase via ref.read(...))
    state = true;
  }

  Future<void> logout() async {
    // TODO: Implement logout logic
    state = false;
  }
}
''';

  static const String _apiClientProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_client.dart';

part 'api_client_provider.g.dart';

/// Provider global untuk [ApiClient] (setara `Get.put(ApiClient(), permanent: true)`).
@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  return ApiClient();
}
''';

  static const String _sharedPreferencesProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

/// Placeholder provider untuk [SharedPreferences].
///
/// Wajib di-override di `main()` menggunakan `overrideWithValue(prefs)`
/// karena SharedPreferences hanya bisa diambil secara async.
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) {
  throw UnimplementedError(
    'sharedPreferencesProvider harus di-override di main() '
    'dengan overrideWithValue(prefs).',
  );
}
''';

  static const String _appRouterTemplate = '''
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/splash/views/splash_view.dart';
import '../../presentation/dashboard/views/dashboard_view.dart';
import 'route_paths.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RoutePaths.dashboard,
        builder: (context, state) => const DashboardView(),
      ),
    ],
  );
}
''';

  static const String _routePathsTemplate = '''
abstract class RoutePaths {
  static const splash = '/';
  static const login = '/login';
  static const dashboard = '/dashboard';
}
''';

  static const String _themeTemplate = '''
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  // Add more configurations
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.grey[900],
  appBarTheme: AppBarTheme(
    color: Colors.grey[850],
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  // Add more configurations
);
''';

  static const String _themeProviderTemplate = '''
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

/// Mengelola [ThemeMode] aplikasi. Baca di `MaterialApp.router`
/// dengan `ref.watch(appThemeModeProvider)`.
@Riverpod(keepAlive: true)
class AppThemeMode extends _\$AppThemeMode {
  @override
  ThemeMode build() => ThemeMode.system;

  void toggle() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }

  void setMode(ThemeMode mode) => state = mode;
}
''';

  static const String _mainTemplate = '''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'shared/providers/shared_preferences_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeMode = ref.watch(appThemeModeProvider);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        routerConfig: router,
      ),
    );
  }
}
''';

  static const String _splashProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_provider.g.dart';

/// Async provider yang menyelesaikan proses inisialisasi splash
/// (mis. cek token, load config). View me-`listen` provider ini lalu
/// melakukan navigasi saat selesai.
@riverpod
Future<void> splashInit(Ref ref) async {
  // TODO: Inisialisasi awal aplikasi (cek auth, dsb).
  await Future.delayed(const Duration(seconds: 3));
}
''';

  static const String _splashViewTemplate = '''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/route_paths.dart';
import '../providers/splash_provider.dart';

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    ref.listen(splashInitProvider, (previous, next) {
      next.whenOrNull(
        data: (_) => context.go(RoutePaths.dashboard),
      );
    });

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: const Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
''';

  static const String _dashboardStateTemplate = '''
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _\$DashboardState {
  const factory DashboardState({
    @Default(0) int count,
  }) = _DashboardState;
}
''';

  static const String _dashboardProviderTemplate = '''
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../states/dashboard_state.dart';

part 'dashboard_provider.g.dart';

@riverpod
class Dashboard extends _\$Dashboard {
  @override
  DashboardState build() => const DashboardState();

  void increment() => state = state.copyWith(count: state.count + 1);
}
''';

  static const String _dashboardViewTemplate = '''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/dashboard_provider.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Count: \${state.count}',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: notifier.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
''';
}
