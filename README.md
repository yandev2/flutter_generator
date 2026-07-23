# 🚀 Flutter Generator Pro

[![Dart](https://img.shields.io/badge/Dart-3.10+-blue.svg)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-Compatible-02569B.svg)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**Flutter Generator Pro** adalah *Custom CLI Package* untuk mempercepat development Flutter dengan **Clean Architecture feature-first**, **Riverpod 3.x**, dan **go_router**.

> 📘 Arsitektur detail: [documentation.md](documentation.md)

---

## 📋 Daftar Isi

- [Instalasi](#-instalasi)
- [Cara Penggunaan](#-cara-penggunaan)
- [Workflow Lengkap](#-workflow-lengkap)
- [Konvensi Penamaan (AuthRepository)](#-konvensi-penamaan-contoh-authrepository)
- [Generator 1: Initial Setup Project](#-1-initial-setup-project-generator)
- [Generator 2: JSON to Entity & Model](#-2-json-to-entity--model-generator)
- [Generator 3: Data Layer Generator](#-3-data-layer-generator)
- [Generator 4: Usecase Generator](#-4-usecase-generator)
- [Generator 5: Presentation Generator (Riverpod)](#-5-presentation-generator-riverpod)
- [Struktur Project Package](#-struktur-project-package)
- [Catatan Penting](#-catatan-penting)

---

## 📦 Instalasi

```yaml
dev_dependencies:
  flutter_generator:
    git:
      url: https://github.com/USERNAME_ANDA/flutter_generator.git
      ref: main
```

```bash
flutter pub get
```

---

## 🛠️ Cara Penggunaan

```bash
dart run flutter_generator:flutter_generator
```

```
=====================================
🚀 FLUTTER GENERATOR PRO 🚀
=====================================
Silakan pilih alat yang ingin dijalankan:
1. Initial Setup Project Generator (gen_init)
2. JSON to Entity & Model Generator (gen_model)
3. Data Layer Generator (gen_data)
4. Usecase Generator (gen_usecase)
5. Presentation Generator / Page (gen_page)
6. Keluar
=====================================
Masukkan pilihan Anda (1/2/3/4/5/6):
```

Perintah langsung:

```bash
dart run flutter_generator:gen_init           # 1
dart run flutter_generator:gen_model          # 2
dart run flutter_generator:gen_data           # 3
dart run flutter_generator:gen_usecase        # 4
dart run flutter_generator:gen_page           # 5
dart run flutter_generator:flutter_generator  # menu
```

---

## 🔄 Workflow Lengkap

Contoh fitur `auth`:

```text
1. gen_init     → lib/app/, lib/core/, splash & dashboard scaffold, pubspec merge
2. gen_model    → domain/entities/*.dart + data/models/*.dart
3. [manual]     → tulis abstract AuthRepository
4. gen_data     → datasource, repository impl, usecase, provider wiring (otomatis)
5. gen_page     → state, page provider, LoginPage, optional route inject
6. build_runner → dart run build_runner build -d
```

Provider chain setelah `gen_data`:

```text
apiClientProvider
  → authDatasourceProvider
  → authRepositoryProvider
  → loginUsecaseProvider / logoutUsecaseProvider / ... (semua method)
```

Setelah `gen_page` + wiring (`gen_usecase` inject `y` jika page sudah ada):

```text
  → loginProvider (Notifier class Login)
  → LoginPage
```

---

## 📐 Konvensi Penamaan (contoh `AuthRepository`)

Asumsi: fitur `auth`, repository `AuthRepository`, page/method `login`.

### Domain

| Item | Nilai |
|------|-------|
| Folder repository | `lib/features/auth/domain/repositories/` |
| File repository | `auth_repository.dart` |
| Class repository | `AuthRepository` |
| Folder entity | `lib/features/auth/domain/entities/` |
| File entity (dari JSON `AuthRequest`) | `auth_request_entity.dart` |
| Class entity | `AuthRequestEntity` |
| Folder usecase | `lib/features/auth/domain/usecases/` |
| File usecase (method `login`) | `login_usecase.dart` |
| Class usecase | `LoginUsecase` ← suffix **`Usecase`** (bukan `UseCase`) |

### Data

| Item | Nilai |
|------|-------|
| Folder model | `lib/features/auth/data/models/` |
| File model | `auth_request_model.dart` |
| Class model | `AuthRequestModel` |
| Folder datasource | `lib/features/auth/data/datasources/` |
| File datasource | `auth_datasource.dart` |
| Class datasource | `AuthDatasource` / `AuthDatasourceImpl` |
| Folder repository impl | `lib/features/auth/data/repositories/` |
| File repository impl | `auth_repository_impl.dart` |
| Class repository impl | `AuthRepositoryImpl` |

### Presentation (providers)

| Item | Nilai |
|------|-------|
| Folder providers | `lib/features/auth/presentation/providers/` |
| Datasource provider file | `auth_datasource_provider.dart` |
| Datasource provider fn | `authDatasourceProvider` |
| Repository provider file | `auth_repository_provider.dart` |
| Repository provider fn | `authRepositoryProvider` |
| Usecase provider file | `login_usecase_provider.dart` |
| Usecase provider fn | `loginUsecaseProvider` |
| Page provider file | `login_provider.dart` |
| Notifier class / provider | `Login` / `loginProvider` |

### Presentation (page)

| Item | Nilai |
|------|-------|
| State file / class | `login_state.dart` / `LoginState` |
| Page file / class | `login_page.dart` / `LoginPage` |
| Variabel di page | `loginState`, `loginNotifier` |

### App / Core

| Item | Nilai |
|------|-------|
| Router folder | `lib/app/router/` |
| Route paths file | `route_paths.dart` → `RoutePaths.login` |
| App router file | `app_router.dart` |
| API client | `lib/core/network/api_client.dart` |
| API client provider | `lib/core/network/api_client_provider.dart` → `apiClientProvider` |
| Failures | `lib/core/errors/failures.dart` |
| Exceptions | `lib/core/errors/exceptions.dart` |

### Import relatif penting

```dart
// lib/features/auth/data/datasources/auth_datasource.dart
import '../../../../core/network/api_client.dart';
import '../models/auth_response_model.dart';

// lib/features/auth/data/repositories/auth_repository_impl.dart
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource.dart';
import '../models/auth_request_model.dart';

// lib/features/auth/domain/usecases/login_usecase.dart
import '../entities/auth_request_entity.dart';
import '../repositories/auth_repository.dart';

// lib/features/auth/presentation/providers/auth_datasource_provider.dart
import '../../../../core/network/api_client_provider.dart';
import '../../data/datasources/auth_datasource.dart';

// lib/features/auth/presentation/providers/auth_repository_provider.dart
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import 'auth_datasource_provider.dart';

// lib/features/auth/presentation/providers/login_usecase_provider.dart
import '../../domain/usecases/login_usecase.dart';
import 'auth_repository_provider.dart';

// lib/features/auth/presentation/pages/login_page.dart
import '../providers/login_provider.dart';

// lib/app/router/app_router.dart (route inject)
import '../../features/auth/presentation/pages/login_page.dart';
```

> **Catatan folder entity:** `gen_model` menaruh entity **flat** di `domain/entities/`. Subfolder seperti `entities/request/` boleh dipakai manual; sesuaikan import di repository.

---

## 🌟 1. Initial Setup Project Generator

```bash
dart run flutter_generator:gen_init
```

### File & folder yang dibuat

```text
.env                                   → BASE_URL, timeout, APP_NAME (jangan di-commit)
.env.example                           → template referensi untuk tim
lib/
├── main.dart                          → import app/bootstrap.dart
├── app/
│   ├── app.dart                       → class App extends ConsumerWidget
│   ├── bootstrap.dart                 → load .env + ProviderScope + class App
│   ├── router/
│   │   ├── app_router.dart            → appRouterProvider, SplashPage, DashboardPage
│   │   └── route_paths.dart           → RoutePaths.splash, .dashboard
│   └── providers/
│       ├── auth_provider.dart         → class Auth → authProvider
│       └── shared_preferences_provider.dart → sharedPreferencesProvider
├── core/
│   ├── constants/env_config.dart      → class EnvConfig (baca dari .env)
│   ├── constants/app_constants.dart   → storage keys, appVersion
│   ├── errors/failures.dart           → class Failure (Freezed)
│   ├── errors/exceptions.dart
│   ├── errors/exception_mapper.dart   → ExceptionMapper.toFailure / .guard
│   ├── navigation/tab_navigation_state.dart
│   ├── navigation/tab_navigation_provider.dart
│   ├── network/api_client.dart        → class ApiClient
│   ├── network/api_client_provider.dart → apiClientProvider
│   └── theme/app_theme.dart, theme_provider.dart → appThemeModeProvider
└── features/
    ├── auth/
    │   ├── domain/repositories/auth_repository.dart → abstract AuthRepository
    │   └── presentation/pages/login_page.dart       → class LoginPage (skeleton)
    ├── splash/presentation/
    │   ├── pages/splash_page.dart     → class SplashPage
    │   └── providers/splash_provider.dart → splashInitProvider
    └── dashboard/presentation/
        ├── pages/dashboard_page.dart  → class DashboardPage
        ├── providers/dashboard_provider.dart → class Dashboard → dashboardProvider
        └── states/dashboard_state.dart → class DashboardState
assets/images/, assets/icons/
analysis_options.yaml                  → plugin riverpod_lint
.gitignore                             → ditambahkan entry `.env` jika belum ada
```

**Dependency tambahan di `pubspec.yaml`:** `flutter_dotenv` + asset `.env`.

**Variabel `.env` default:**

| Key | Contoh | Dipakai di |
|-----|--------|------------|
| `BASE_URL` | `https://api.example.com` | `ApiClient` via `EnvConfig` |
| `CONNECTION_TIMEOUT` | `30000` | `ApiClient` connect timeout |
| `RECEIVE_TIMEOUT` | `30000` | `ApiClient` receive timeout |
| `APP_NAME` | `Flutter App` | `MaterialApp.router` title |

**Fitur auth bawaan:**
- `AuthRepository` skeleton siap untuk `gen_data`
- `LoginPage` + auth guard di `GoRouter` (redirect ke `/login` jika belum auth)
- Token disimpan di `SharedPreferences` + di-inject ke `ApiClient` header

Scaffold folder per fitur (via `gen_model` / `gen_page` / `gen_data`) juga mencakup: `presentation/widgets/`, `domain/`, `data/`.

---

## 🌟 2. JSON to Entity & Model Generator

Input JSON class `AuthRequest` di fitur `auth`:

| Output | Path | Class |
|--------|------|-------|
| Entity | `lib/features/auth/domain/entities/auth_request_entity.dart` | `AuthRequestEntity` |
| Model | `lib/features/auth/data/models/auth_request_model.dart` | `AuthRequestModel` |

### Contoh generated entity

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_entity.freezed.dart';
part 'auth_request_entity.g.dart';

@Freezed()
abstract class AuthRequestEntity with _$AuthRequestEntity {
  const factory AuthRequestEntity({ String? email, String? password }) = _AuthRequestEntity;
  factory AuthRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestEntityFromJson(json);
}
```

### Contoh generated model (import)

```dart
import '../../domain/entities/auth_request_entity.dart';

class AuthRequestModel {
  // fromJson, toJson, fromEntity(), toEntity()
}
```

---

## 🌟 3. Data Layer Generator

Input: `lib/features/auth/domain/repositories/auth_repository.dart`

Output:

| Layer | File | Class |
|-------|------|-------|
| Datasource | `data/datasources/auth_datasource.dart` | `AuthDatasource`, `AuthDatasourceImpl` |
| Repository impl | `data/repositories/auth_repository_impl.dart` | `AuthRepositoryImpl` |
| Usecase | `domain/usecases/login_usecase.dart` | `LoginUsecase` |
| Wiring | `presentation/providers/auth_datasource_provider.dart` | `authDatasourceProvider` |
| Wiring | `presentation/providers/auth_repository_provider.dart` | `authRepositoryProvider` |
| Wiring | `presentation/providers/login_usecase_provider.dart` | `loginUsecaseProvider` |

### Contoh domain repository (input manual)

```dart
// lib/features/auth/domain/repositories/auth_repository.dart
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auth_request_entity.dart';
import '../entities/auth_response_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseEntity>> login(AuthRequestEntity data);
  Future<Either<Failure, bool>> logout();
}
```

### Contoh generated repository impl (cuplikan)

```dart
class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _datasource;
  AuthRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, AuthResponseEntity>> login(AuthRequestEntity data) async {
    try {
      final result = await _datasource.login(AuthRequestModel.fromEntity(data));
      return Right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    }
    // ... NetworkException, ServerException, RequestTimeoutException, catch
  }
}
```

### Contoh generated datasource (cuplikan)

```dart
abstract class AuthDatasource {
  Future<AuthResponseModel> login(AuthRequestModel data);
}

class AuthDatasourceImpl extends AuthDatasource {
  final ApiClient _client;
  AuthDatasourceImpl(this._client);

  @override
  Future<AuthResponseModel> login(AuthRequestModel data) async {
    final response = await _client.post('/login', body: data.toJson());
    final user = AuthResponseModel.fromJson(response['data']);
    if (user.token != null) _client.setToken(user.token!);
    return user;
  }
}
```

### Aturan endpoint

- Path: `/{method.toSnakeCase()}` → `autoLogin` = `/auto_login`
- HTTP: prefix `get|fetch|list|auto` → GET; `delete` → DELETE; lainnya POST
- Response: `response['data']`; Entity return → `Model.fromJson(response['data'])`

---

## 🌟 4. Usecase Generator

Regenerate usecase saja (tanpa regenerate datasource/impl). **`gen_data` sudah membuat usecase + wiring penuh.**

```bash
dart run flutter_generator:gen_usecase
```

Jika pilih auto-wiring `y`: memperbarui chain provider + link `login_provider.dart` → `loginUsecaseProvider` (jika file page provider sudah ada dari `gen_page`).

### Contoh generated usecase

```dart
// lib/features/auth/domain/usecases/login_usecase.dart
import '../entities/auth_request_entity.dart';
import '../entities/auth_response_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase(this.repository);

  Future<AuthResponseEntity> call(AuthRequestEntity data) async {
    final result = await repository.login(data);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
```

---

## 🌟 5. Presentation Generator (Riverpod)

```bash
dart run flutter_generator:gen_page
```

| Output | Path | Class |
|--------|------|-------|
| State | `presentation/states/login_state.dart` | `LoginState` |
| Provider | `presentation/providers/login_provider.dart` | `Login` → `loginProvider` |
| Page | `presentation/pages/login_page.dart` | `LoginPage` |

### Contoh generated page

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/login_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final loginState = ref.watch(loginProvider);
    final loginNotifier = ref.read(loginProvider.notifier);
    // ...
  }
}
```

### Route inject (`lib/app/router/`)

```dart
// route_paths.dart — ditambah:
static const login = '/login';

// app_router.dart — import:
import '../../features/auth/presentation/pages/login_page.dart';

// GoRoute:
GoRoute(
  path: RoutePaths.login,
  builder: (context, state) => const LoginPage(),
),
```

---

## 📁 Struktur Project Package

```text
flutter_generator/
├── bin/
│   ├── flutter_generator.dart
│   ├── generate_init.dart       → gen_init
│   ├── generate.dart            → gen_model
│   ├── generate_data.dart       → gen_data
│   ├── generate_usecase.dart    → gen_usecase
│   └── generate_page.dart       → gen_page
├── lib/src/
│   ├── builder/                 → init, entity, model, datasource,
│   │                               repository_impl, usecase, presentation, wiring
│   ├── core/                    → feature_paths, data_naming, type_mapping,
│   │                               data_wiring_injector, route_injector, ...
│   └── parser/                  → json_parser, repository_parser
└── test/                        → data_layer, usecase, wiring, state_management, ...
```

---

## ⚠️ Catatan Penting

1. Jalankan generator di **root project Flutter target**, bukan di folder package ini.
2. Setelah generate provider/state: `dart run build_runner build -d`
3. `gen_init` merge dependency ke `pubspec.yaml` target → jalankan `flutter pub get`
4. Domain repository wajib pakai `Either<Failure, T>` dari **`dartz`**
5. Penamaan usecase: **`LoginUsecase`** (suffix `Usecase`, satu kata)
6. File repository impl: **`auth_repository_impl.dart`** (bukan `auth_impl.dart`)

---

## 📄 Lisensi

MIT License

---

*Dibuat dengan ❤️ untuk memudahkan harimu! ☕*
