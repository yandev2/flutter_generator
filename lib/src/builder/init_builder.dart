// ignore_for_file: avoid_print
import 'dart:io';

class InitBuilder {
  static void build() {
    print('🚀 Memulai inisialisasi struktur project...');

    final directories = [
      'lib/core/const',
      'lib/core/error',
      'lib/core/mixin',
      'lib/core/module',
      'lib/core/network',
      'lib/core/shared',
      'lib/data/model',
      'lib/data/repository_impl',
      'lib/data/source',
      'lib/domain/entity',
      'lib/domain/repository',
      'lib/domain/usecase',
      'lib/presentation/main/splash_screen/bindings',
      'lib/presentation/main/splash_screen/controllers',
      'lib/presentation/main/splash_screen/views',
      'lib/presentation/dashboard/bindings',
      'lib/presentation/dashboard/controllers',
      'lib/presentation/dashboard/views',
      'lib/service/auth',
      'lib/service/dependency',
      'lib/service/route',
      'lib/service/theme',
    ];

    for (var dir in directories) {
      Directory(dir).createSync(recursive: true);
      print('✅ Created directory: $dir');
    }

    _createFile('lib/core/const/app_constants.dart', _appConstantsTemplate);
    _createFile('lib/core/error/failures.dart', _failureTemplate);
    _createFile('lib/core/error/exceptions.dart', _exceptionTemplate);
    _createFile(
      'lib/core/mixin/lazy_tab_navigation_mixin.dart',
      _lazyTabNavigationTemplate,
    );
    _createFile('lib/core/mixin/tab_loadable_mixin.dart', _tabLoadableTemplate);
    _createFile('lib/core/network/api_client.dart', _apiClientTemplate);
    _createFile('lib/service/auth/auth_service.dart', _authServiceTemplate);
    _createFile(
      'lib/service/dependency/dependency_injection.dart',
      _diTemplate,
    );
    _createFile('lib/service/route/app_route.dart', _appRouteTemplate);
    _createFile('lib/service/route/route_name.dart', _routeNameTemplate);
    _createFile('lib/service/theme/theme.dart', _themeTemplate);
    _createFile('lib/service/theme/theme_manager.dart', _themeManagerTemplate);
    _createFile('lib/main.dart', _mainTemplate);
    _createFile(
      'lib/presentation/main/splash_screen/bindings/splash_screen_binding.dart',
      _splashBindingTemplate,
    );
    _createFile(
      'lib/presentation/main/splash_screen/controllers/splash_screen_controller.dart',
      _splashControllerTemplate,
    );
    _createFile(
      'lib/presentation/main/splash_screen/views/splash_screen_view.dart',
      _splashViewTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/bindings/dashboard_binding.dart',
      _dashboardBindingTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/controllers/dashboard_controller.dart',
      _dashboardControllerTemplate,
    );
    _createFile(
      'lib/presentation/dashboard/views/dashboard_view.dart',
      _dashboardViewTemplate,
    );

    print('🎉 Inisialisasi struktur project selesai!\n');
    print(
      '📦 Pastikan Anda telah menambahkan package berikut di pubspec.yaml:',
    );
    print('dependencies:');
    print('  - get');
    print('  - dio');
    print('  - freezed_annotation');
    print('  - shared_preferences');
    print('  - intl');
    print('  - flutter_screenutil');
    print('\ndev_dependencies:');
    print('  - freezed');
    print('  - build_runner\n');
    print(
      'Silakan jalankan `flutter pub get` lalu `dart run build_runner build -d` untuk men-generate file freezed.',
    );
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

  static const String _lazyTabNavigationTemplate = '''
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

mixin LazyTabNavigation on GetxController {
  int get tabCount;

  final currentIndex = 0.obs;
  final RxList<int> visitedTabIndices = <int>[0].obs;

  bool isTabVisited(int index) => visitedTabIndices.contains(index);

  @override
  void onReady() {
    super.onReady();
    ensureTabLoaded(0);
  }

  void changeTab(int index, {bool refresh = false}) {
    if (index < 0 || index >= tabCount) return;
    _markVisited(index);
    currentIndex.value = index;
    ensureTabLoaded(index, refresh: refresh);
  }

  void changePage(int index, {bool refresh = false}) => changeTab(index, refresh: refresh);

  void _markVisited(int index) {
    if (!visitedTabIndices.contains(index)) {
      visitedTabIndices.add(index);
    }
  }

  void ensureTabLoaded(int index, {bool refresh = false}) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      loadTabController(index, refresh: refresh);
    });
  }

  Future<void> loadTabController(int index, {bool refresh = false});
}
''';

  static const String _tabLoadableTemplate = '''
import 'package:get/get.dart';

/// Mixin untuk tab controller di [IndexedStack] navigation.
/// Data hanya di-fetch saat tab pertama kali aktif atau saat [refresh] diminta.
mixin TabLoadable on GetxController {
  bool _hasLoaded = false;

  Future<void> loadTabData();

  Future<void> loadIfNeeded({bool refresh = false}) async {
    if (_hasLoaded && !refresh) return;
    await loadTabData();
    _hasLoaded = true;
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

  static const String _authServiceTemplate = '''
import 'package:get/get.dart';
import '../route/route_name.dart';

class AuthService extends GetxService {
  final isLoggedIn = false.obs;

  @override
  void onReady() {
    super.onReady();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 2));
    // Check token from SharedPreferences or other storage here
    if (isLoggedIn.isTrue) {
      Get.offAllNamed(RouteName.dashboard);
    } else {
      Get.offAllNamed(RouteName.login);
    }
  }

  Future<void> login() async {
    // Implement login logic here
    isLoggedIn.value = true;
    Get.offAllNamed(RouteName.dashboard);
  }

  Future<void> logout() async {
    // Implement logout logic here
    isLoggedIn.value = false;
    Get.offAllNamed(RouteName.login);
  }
}
''';

  static const String _diTemplate = '''
import 'package:get/get.dart';
import '../../core/network/api_client.dart';
import '../auth/auth_service.dart';
import '../theme/theme_manager.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeManager(), permanent: true);
    Get.lazyPut<ApiClient>(() => ApiClient(), fenix: true);
    Get.put(AuthService(), permanent: true);
  }
}
''';

  static const String _appRouteTemplate = '''
import 'package:get/get.dart';
import 'route_name.dart';
import '../../presentation/main/splash_screen/bindings/splash_screen_binding.dart';
import '../../presentation/main/splash_screen/views/splash_screen_view.dart';
import '../../presentation/dashboard/bindings/dashboard_binding.dart';
import '../../presentation/dashboard/views/dashboard_view.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: RouteName.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
''';

  static const String _routeNameTemplate = '''
abstract class RouteName {
  static const splashScreen = '/splash_screen';
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

  static const String _themeManagerTemplate = '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 final isDarkMode = false.obs;
class ThemeManager extends GetxController {
 

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
''';

  static const String _mainTemplate = '''
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_component_flutter/theme/app_scale.dart';
import 'service/dependency/dependency_injection.dart';
import 'service/route/app_route.dart';
import 'service/route/route_name.dart';
import 'service/theme/theme.dart';
import 'service/theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  final prefs = await SharedPreferences.getInstance();
  Get.put(prefs, permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => Obx(
        () => GetMaterialApp(
          title: 'My App',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: isDarkMode.isTrue ? ThemeMode.dark : ThemeMode.light,
          initialRoute: RouteName.splashScreen,
          initialBinding: InitialBinding(),
          getPages: AppRoute.pages,
          builder: (context, extendedChild) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(scale())),
              child: extendedChild!,
            );
          },
        ),
      ),
    );
  }
}
''';

  static const String _splashBindingTemplate = '''
import 'package:get/get.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
  }
}
''';

  static const String _splashControllerTemplate = '''
import 'package:get/get.dart';
import '../../../../service/route/route_name.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteName.dashboard);
    });
  }
}
''';

  static const String _splashViewTemplate = '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
''';

  static const String _dashboardBindingTemplate = '''
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
''';

  static const String _dashboardControllerTemplate = '''
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
}
''';

  static const String _dashboardViewTemplate = '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Count: \${controller.count}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
''';
}
