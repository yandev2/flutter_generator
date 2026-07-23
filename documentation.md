lib/

├── app/
│
│   ├── app.dart
│   ├── bootstrap.dart
│   │
│   ├── router/
│   │   ├── app_router.dart
│   │   ├── route_names.dart
│   │   ├── route_paths.dart
│   │   └── route_guards.dart
│   │
│   └── providers/
│       └── app_providers.dart
│
├── core/
│
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── api_constants.dart
│   │   ├── storage_keys.dart
│   │   └── asset_paths.dart
│   │
│   ├── theme/
│   │   ├── app_theme.dart
│   │   └── app_colors.dart
│   │
│   ├── network/
│   │   ├── dio_client.dart
│   │   ├── network_info.dart
│   │   ├── interceptors/
│   │   │   ├── auth_interceptor.dart
│   │   │   ├── logger_interceptor.dart
│   │   │   └── retry_interceptor.dart
│   │   │
│   │   └── models/
│   │       └── api_response.dart
│   │
│   ├── storage/
│   │   ├── secure_storage.dart
│   │   ├── shared_preferences_storage.dart
│   │   └── hive_storage.dart
│   │
│   ├── services/
│   │   ├── biometric_service.dart
│   │   ├── location_service.dart
│   │   ├── notification_service.dart
│   │   ├── camera_service.dart
│   │   ├── image_picker_service.dart
│   │   └── file_picker_service.dart
│   │
│   ├── errors/
│   │   ├── failures.dart
│   │   ├── exceptions.dart
│   │   └── error_mapper.dart
│   │
│   ├── usecases/
│   │   └── usecase.dart
│   │
│   ├── extensions/
│   │   ├── context_extension.dart
│   │   ├── string_extension.dart
│   │   ├── date_extension.dart
│   │   └── currency_extension.dart
│   │
│   ├── utils/
│   │   ├── validators.dart
│   │   ├── formatter.dart
│   │   ├── logger.dart
│   │   ├── helpers.dart
│   │   └── debounce.dart
│   │
│   ├── widgets/
│   │   ├── app_button.dart
│   │   ├── app_text_field.dart
│   │   ├── loading_widget.dart
│   │   ├── empty_widget.dart
│   │   └── error_state_widget.dart
│   │
│   └── di/
│       └── dependency_injection.dart
│
├── features/
│
│   ├── auth/
│   │
│   │   ├── presentation/
│   │   │
│   │   │   ├── pages/
│   │   │   ├── widgets/
│   │   │   ├── providers/
│   │   │   └── states/
│   │   │
│   │   ├── domain/
│   │   │
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   │
│   │   └── data/
│   │
│   │       ├── datasources/
│   │       ├── models/
│   │       └── repositories/
│   │
│   ├── profile/
│   ├── attendance/
│   ├── employee/
│   ├── leave/
│   ├── announcement/
│   ├── notification/
│   └── dashboard/
│
├── l10n/
│
├── assets/
│   ├── images/
│   ├── icons/
│   ├── fonts/
│   └── animations/
│
└── main.dart





# Flutter Clean Architecture (Feature First) - Architecture Handbook

# 1. Gambaran Umum

Struktur ini dirancang untuk:

- Flutter + Riverpod Generator
- GoRouter
- Dio
- Clean Architecture
- Feature First
- Enterprise Scale
- Mudah dirawat dalam jangka panjang

Prinsip utama:

```text
Presentation
      ↓
Domain
      ↓
Data
```

Rule:

- Presentation boleh mengetahui Domain.
- Data mengimplementasikan Domain.
- Domain tidak mengetahui Flutter.
- Domain tidak mengetahui Riverpod.
- Domain tidak mengetahui Dio.
- Core tidak boleh mengimpor Feature.

---

# 2. Struktur Root

```text
lib/
├── app/
├── core/
├── features/
├── l10n/
├── assets/
└── main.dart
```

# main.dart

Entry point aplikasi.

Contoh:

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootstrap();
}
```

Tugas:
- Menjalankan aplikasi
- Memanggil bootstrap
- Menyiapkan ProviderScope

---

# 3. Folder app/

Berisi konfigurasi global aplikasi.

```text
app/
├── app.dart
├── bootstrap.dart
├── router/
└── providers/
```

## app.dart

Root widget aplikasi.

Biasanya berisi:

```dart
MaterialApp.router(
  routerConfig: router,
  theme: AppTheme.lightTheme,
);
```

Tanggung jawab:
- Theme
- Router
- Localization
- MaterialApp

---

## bootstrap.dart

Inisialisasi aplikasi.

Biasanya:

- Firebase.initializeApp()
- Hive.init()
- Logger setup
- Environment setup
- Dependency setup

Contoh:

```dart
Future<void> bootstrap() async {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
```

---

# app/router/

Semua konfigurasi navigasi.

## app_router.dart

Tempat konfigurasi GoRouter.

Contoh:

```dart
final router = GoRouter(
 routes: []
);
```

---

## route_names.dart

Nama route.

```dart
class RouteNames {
 static const login = "login";
 static const home = "home";
}
```

Kelebihan:
- Tidak hardcode string

---

## route_paths.dart

Path route.

```dart
class RoutePaths {
 static const login = "/login";
 static const home = "/home";
}
```

---

## route_guards.dart

Guard dan redirect.

Contoh:

```dart
if (!isLoggedIn) {
 return '/login';
}
```

Digunakan untuk:

- Authentication
- Authorization
- Role permission

---

# app/providers/

Provider global aplikasi.

## app_providers.dart

Contoh provider global:

```dart
localeProvider
connectivityProvider
routerProvider
```

Provider bisnis tidak boleh disimpan di sini.

---

# 4. Folder core/

Folder bersama seluruh aplikasi.

```text
core/
├── constants/
├── theme/
├── network/
├── storage/
├── services/
├── errors/
├── usecases/
├── extensions/
├── utils/
├── widgets/
└── di/
```

---

# core/constants/

Tempat seluruh konstanta.

## app_constants.dart

Contoh:

```dart
class AppConstants {
 static const appName = "Presensiku";
}
```

---

## api_constants.dart

Contoh:

```dart
class ApiConstants {
 static const baseUrl =
 "https://api.com";
}
```

---

## storage_keys.dart

Seluruh key storage.

```dart
accessToken
refreshToken
user
```

---

## asset_paths.dart

Seluruh path asset.

```dart
logoPng
emptySvg
```

---

# core/theme/

## app_theme.dart

ThemeData utama.

Berisi:

- TextTheme
- ButtonTheme
- InputTheme
- CardTheme
- DialogTheme

---

## app_colors.dart

Seluruh warna.

Contoh:

```dart
primary
secondary
success
warning
error
```

---

# core/network/

Semua urusan API.

## dio_client.dart

Konfigurasi Dio.

Biasanya:

```dart
BaseOptions
Timeout
Headers
```

---

## network_info.dart

Cek koneksi internet.

Contoh:

```dart
Future<bool> hasConnection()
```

---

# interceptors/

## auth_interceptor.dart

Menambahkan token.

```http
Authorization:
Bearer token
```

---

## logger_interceptor.dart

Log request.

Digunakan saat development.

---

## retry_interceptor.dart

Retry request gagal.

Misal:

```text
3x retry
```

---

# network/models/

## api_response.dart

Wrapper response API.

Contoh:

```dart
class ApiResponse<T> {
 final bool success;
 final T? data;
}
```

---

# core/storage/

Abstraksi penyimpanan lokal.

## secure_storage.dart

Untuk:

- Access Token
- Refresh Token

Karena terenkripsi.

---

## shared_preferences_storage.dart

Untuk:

- Theme
- Locale
- Setting ringan

---

## hive_storage.dart

Untuk:

- Cache data
- Offline mode

---

# core/services/

Service lintas fitur.

## biometric_service.dart

Fingerprint.

Contoh:

```dart
authenticate()
```

---

## location_service.dart

GPS.

Contoh:

```dart
getCurrentLocation()
```

---

## notification_service.dart

Push notification.

Biasanya:

- FCM
- Local notification

---

## camera_service.dart

Akses kamera.

---

## image_picker_service.dart

Pilih gambar.

---

## file_picker_service.dart

Pilih dokumen.

PDF, DOCX, XLSX.

---

# core/errors/

Error handling.

## failures.dart

Representasi error domain.

Contoh:

```dart
ServerFailure
NetworkFailure
ValidationFailure
UnauthorizedFailure
```

---

## exceptions.dart

Error teknis.

Contoh:

```dart
ServerException
CacheException
```

---

## error_mapper.dart

Konversi:

```text
DioException
     ↓
NetworkFailure
```

---

# core/usecases/

## usecase.dart

Base usecase.

Contoh:

```dart
abstract class UseCase<T,P> {
 Future<T> call(P params);
}
```

Semua usecase mewarisi class ini.

---

# core/extensions/

## context_extension.dart

Contoh:

```dart
context.theme
context.colorScheme
```

---

## string_extension.dart

Contoh:

```dart
"rian".capitalize()
```

---

## date_extension.dart

Contoh:

```dart
date.toIndonesiaDate()
```

---

## currency_extension.dart

Contoh:

```dart
10000.toRupiah()
```

---

# core/utils/

Helper tanpa state.

## validators.dart

Validasi.

Contoh:

```dart
validateEmail()
validatePassword()
```

---

## formatter.dart

Format text.

---

## logger.dart

Log aplikasi.

---

## helpers.dart

Fungsi utilitas kecil.

---

## debounce.dart

Mengurangi request berulang.

Cocok untuk search.

---

# core/widgets/

Reusable widget global.

## app_button.dart

Button standar.

---

## app_text_field.dart

Input standar.

---

## loading_widget.dart

Widget loading.

---

## empty_widget.dart

Widget data kosong.

---

## error_state_widget.dart

Widget error.

---

# core/di/

## dependency_injection.dart

Registrasi dependency.

Contoh:

```dart
dioProvider
storageProvider
networkProvider
```

---

# 5. Folder features/

Folder domain bisnis.

Contoh:

```text
auth
employee
attendance
profile
leave
notification
dashboard
announcement
```

Setiap feature:

```text
feature/
├── presentation/
├── domain/
└── data/
```

---

# presentation/

Layer UI.

Boleh mengetahui:

- Flutter
- Riverpod
- GoRouter

## pages/

Screen.

Contoh:

```text
login_page.dart
employee_page.dart
```

---

## widgets/

Widget khusus feature.

Contoh:

```text
employee_card.dart
login_form.dart
```

---

## providers/

Riverpod.

Contoh:

```text
auth_provider.dart
employee_provider.dart
```

---

## states/

State UI.

Contoh:

```dart
EmployeeFormState
```

---

# domain/

Pure business layer.

Tidak tahu:

- Flutter
- Riverpod
- Dio
- JSON

## entities/

Objek bisnis.

Contoh:

```dart
User
Employee
Attendance
```

---

## repositories/

Kontrak.

Contoh:

```dart
abstract class EmployeeRepository
```

---

## usecases/

Business rule.

Contoh:

```text
GetEmployeesUseCase
CreateEmployeeUseCase
DeleteEmployeeUseCase
```

---

# data/

Implementasi teknis.

## datasources/

Sumber data.

Contoh:

```text
RemoteDatasource
LocalDatasource
```

---

## models/

DTO dan model JSON.

Contoh:

```text
UserModel
EmployeeModel
```

Biasanya menggunakan:

- Freezed
- Json Serializable

---

## repositories/

Implementasi repository.

Contoh:

```dart
EmployeeRepositoryImpl
```

---

# Contoh Detail Feature Auth

```text
auth/
├── presentation/
│   ├── pages/
│   │   ├── login_page.dart
│   │   ├── register_page.dart
│   │   └── forgot_password_page.dart
│   │
│   ├── widgets/
│   │   └── login_form.dart
│   │
│   ├── providers/
│   │   └── auth_provider.dart
│   │
│   └── states/
│       └── auth_state.dart
│
├── domain/
│   ├── entities/
│   │   └── user.dart
│   │
│   ├── repositories/
│   │   └── auth_repository.dart
│   │
│   └── usecases/
│       ├── login_usecase.dart
│       ├── logout_usecase.dart
│       └── register_usecase.dart
│
└── data/
    ├── datasources/
    │   ├── auth_remote_datasource.dart
    │   └── auth_local_datasource.dart
    │
    ├── models/
    │   ├── user_model.dart
    │   └── login_response.dart
    │
    └── repositories/
        └── auth_repository_impl.dart
```

---

# l10n/

Internationalization.

Contoh:

```text
app_id.arb
app_en.arb
```

Digunakan untuk multi bahasa.

---

# assets/

## images/

PNG JPG WEBP

## icons/

SVG dan Icon

## fonts/

Custom font

## animations/

Lottie dan Rive

---

# Kesimpulan

Jika file berkaitan dengan satu domain bisnis:

```text
features/
```

Jika digunakan banyak feature:

```text
core/
```

Jika mengatur aplikasi secara global:

```text
app/
```

Dengan aturan ini proyek tetap bersih walaupun berkembang menjadi ratusan file.
