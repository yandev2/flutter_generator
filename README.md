# 🚀 Flutter Generator Pro

[![Dart](https://img.shields.io/badge/Dart-3.10+-blue.svg)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-Compatible-02569B.svg)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**Flutter Generator Pro** adalah *Custom CLI Package* yang dirancang khusus untuk mempercepat proses *development* aplikasi Flutter yang menggunakan **Clean Architecture** dan **Riverpod** (state management) + **go_router** (routing). Package ini mengotomatisasi pembuatan *boilerplate code* sehingga Anda bisa fokus pada logika bisnis utama.

> 📘 Penjelasan lengkap arsitektur Riverpod (termasuk peta padanan dari GetX) ada di [documentation.md](documentation.md).

---

## 📋 Daftar Isi

- [Instalasi](#-instalasi)
- [Cara Penggunaan](#-cara-penggunaan)
- [Generator 1: JSON to Entity & Model](#-1-json-to-entity--model-generator)
- [Generator 2: Usecase Generator](#-2-usecase-generator)
- [Generator 3: Presentation Generator (Riverpod)](#-3-presentation-generator-riverpod)
- [Generator 4: Initial Setup Project](#-4-initial-setup-project-generator)
- [Struktur Project](#-struktur-project)
- [Catatan Penting](#-catatan-penting)

---

## 📦 Instalasi

Tambahkan package ini ke dalam `pubspec.yaml` proyek Flutter Anda pada bagian `dev_dependencies`:

```yaml
dev_dependencies:
  flutter_generator:
    git:
      url: https://github.com/USERNAME_ANDA/flutter_generator.git
      ref: main
```

Lalu jalankan:

```bash
flutter pub get
```

---

## 🛠️ Cara Penggunaan

Buka terminal di **root project Flutter Anda**, lalu jalankan:

```bash
dart run flutter_generator
```

Menu interaktif akan muncul di terminal:

```
=====================================
🚀 FLUTTER GENERATOR PRO 🚀
=====================================
Silakan pilih alat yang ingin dijalankan:
1. JSON to Entity & Model Generator
2. Usecase Generator
3. Presentation Generator (Riverpod)
4. Initial Setup Project Generator
5. Keluar
=====================================
Masukkan pilihan Anda (1/2/3/4/5):
```

Pilih angka sesuai generator yang ingin dijalankan. Anda juga dapat menjalankan masing-masing generator secara langsung:

```bash
dart run flutter_generator:gen_model      # JSON to Entity & Model
dart run flutter_generator:gen_usecase    # Usecase Generator
dart run flutter_generator:gen_page       # Presentation Generator (Riverpod)
dart run flutter_generator:generate_init  # Initial Setup Project Generator
```

---

## 🌟 1. JSON to Entity & Model Generator

Membuat file **Entity** (Freezed) dan **Model** (Pure Dart) secara otomatis dari file JSON.

### Cara Pakai

1. Siapkan file JSON di root project Anda, contoh `sample.json`:

```json
{
  "id": 1,
  "name": "John Doe",
  "email": "john@example.com",
  "is_active": true,
  "address": {
    "city": "Jakarta",
    "zip_code": "12345"
  }
}
```

2. Jalankan generator dan masukkan informasi yang diminta:

```
=== Flutter JSON to Entity & Model Generator ===
Masukkan nama class utama (contoh: Auth): User
Masukkan path file JSON (contoh: sample.json): sample.json
```

### Hasil Output

**Entity** (`lib/domain/entity/user_entity.dart`):
```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'address_entity.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@Freezed()
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    int? id,
    String? name,
    String? email,
    bool? isActive,
    AddressEntity? address,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
```

**Model** (`lib/data/model/user_model.dart`):
```dart
import '../../domain/entity/user_entity.dart';
import 'address_model.dart';
import '../../domain/entity/address_entity.dart';

class UserModel {
  int? id;
  String? name;
  String? email;
  bool? isActive;
  AddressModel? address;

  UserModel({this.id, this.name, this.email, this.isActive, this.address});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      isActive: json['is_active'] as bool?,
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() { /* ... */ }

  factory UserModel.fromEntity(UserEntity entity) { /* ... */ }

  UserEntity toEntity() { /* ... */ }
}
```

### Fitur Unggulan
- ✅ **Freezed Entity** — Otomatis menggunakan `@Freezed()` annotation
- ✅ **Pure Dart Model** — Tanpa `@JsonKey`, mapping `snake_case` ↔ `camelCase` dilakukan secara manual
- ✅ **Nested Object Support** — Objek bersarang otomatis dibuatkan class terpisah
- ✅ **Auto Build Runner** — Setelah generate, `build_runner` dijalankan otomatis untuk membuat file `.freezed.dart` dan `.g.dart`
- ✅ **Mapper Methods** — Model dilengkapi `fromEntity()` dan `toEntity()`

---

## 🌟 2. Usecase Generator

Membaca file **Abstract Class Repository** dan menghasilkan file-file **Usecase** terpisah untuk setiap method.

### Prasyarat

Pastikan ada file repository di `lib/domain/repository/`, contoh:

```dart
// lib/domain/repository/auth_repository.dart
import '../../entity/request/auth_entity.dart';
import '../../entity/response/user_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(AuthEntity data);
  Future<Either<Failure, UserEntity>> autoLogin();
  Future<Either<Failure, RegisterResponseEntity>> register(RegisterRequestEntity data);
}
```

### Cara Pakai

```
=== Flutter Usecase Generator ===
Masukkan nama Repository (contoh: AuthRepository): AuthRepository
✅ Generated: .../login_usecase.dart
🎉 Generate Usecase Selesai!

Inject usecase provider ke presentation layer (auto-wiring)? (y/n): y
Masukkan nama Fitur (contoh: auth): auth
Masukkan nama Page (contoh: login): login
✅ Generated: .../presentation/auth/providers/auth_repository_provider.dart
✅ Generated: .../presentation/auth/providers/login_usecase_provider.dart
🔗 Linked: .../presentation/auth/providers/login_provider.dart → loginUsecaseProvider
```

> **Page name** harus sama dengan **nama method** di repository (`login` method → page `login`).

### Auto-Wiring (opsional)

Jika memilih `y`, generator membuat provider wiring di **presentation layer** (Domain/Data tetap pure Dart):

```
presentation/auth/providers/
├── auth_repository_provider.dart   # ApiClient → AuthRepositoryImpl
├── login_usecase_provider.dart     # AuthRepository → LoginUsecase
└── login_provider.dart             # (jika sudah ada) di-link ke usecase
```

Chain lengkap:
```text
apiClientProvider → authRepositoryProvider → loginUsecaseProvider → loginProvider → LoginView
```

### Hasil Output

Generator akan membuat folder `lib/domain/usecase/auth_usecase/` berisi:

**`login_usecase.dart`**:
```dart
import '../../entity/request/auth_entity.dart';
import '../../entity/response/user_entity.dart';
import '../../repository/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  Future<UserEntity> call(AuthEntity data) async {
    final result = await repository.login(data);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
```

### Fitur Unggulan
- ✅ **Analyzer AST** — Menggunakan Dart Analyzer untuk membaca kode secara akurat (bukan Regex)
- ✅ **Either Transformer** — Otomatis mengubah `Either<Failure, T>` menjadi `T` langsung
- ✅ **Smart Import** — Hanya mengimpor tipe yang dipakai method tersebut, dengan path relative yang di-rewrite otomatis ke folder usecase
- ✅ **1 Method = 1 File** — Setiap method di repository menghasilkan file Usecase terpisah
- ✅ **Auto-Wiring (opsional)** — Inject provider Riverpod di presentation layer tanpa mengotori domain/data

---

## 🌟 3. Presentation Generator (Riverpod)

Membuat *scaffolding* untuk lapisan **Presentation** berbasis [Riverpod](https://riverpod.dev) + [go_router](https://pub.dev/packages/go_router) secara instan. Setiap page menghasilkan **State**, **Notifier (provider)**, dan **View (`ConsumerWidget`)**.

### Cara Pakai

```
=== Flutter Presentation Generator (Riverpod) ===
Masukkan nama Fitur (contoh: auth): auth
Masukkan nama Page/Layar (contoh: login): login
✅ Generated: .../lib/presentation/auth/states/login_state.dart
✅ Generated: .../lib/presentation/auth/providers/login_provider.dart
✅ Generated: .../lib/presentation/auth/views/login_view.dart
Apakah Anda ingin meng-inject Route ini ke lib/core/router/? (y/n): y
✅ Injected login ke RoutePaths.
✅ Injected GoRoute login ke appRouter.
🎉 Presentation Generator Selesai!
ℹ️ Jalankan `dart run build_runner build -d` untuk men-generate file `.g.dart` & `.freezed.dart`.
```

### Hasil Output — Struktur Folder

```
lib/presentation/auth/
  ├── states/
  │    └── login_state.dart      # state immutable (@freezed)
  ├── providers/
  │    └── login_provider.dart   # Notifier (@riverpod)
  └── views/
       └── login_view.dart       # ConsumerWidget
```

### Smart Merge — Menambah Page di Fitur yang Sama

Jika Anda menjalankan lagi dengan fitur `auth` tapi page `register`, file baru akan **ditambahkan** ke folder yang sudah ada, bukan menimpa:

```
lib/presentation/auth/
  ├── states/
  │    ├── login_state.dart
  │    └── register_state.dart
  ├── providers/
  │    ├── login_provider.dart
  │    └── register_provider.dart
  └── views/
       ├── login_view.dart
       └── register_view.dart
```

### Route Injection

Jika Anda memilih `y` saat ditanya inject route, generator akan otomatis membuat/memodifikasi dua file:

**`lib/core/router/route_paths.dart`**:
```dart
abstract class RoutePaths {
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
}
```

**`lib/core/router/app_router.dart`**:
```dart
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/auth/views/login_view.dart';
import '../../presentation/auth/views/register_view.dart';
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
      GoRoute(
        path: RoutePaths.register,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
```

**Contoh generated view (`login_view.dart`):**
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/login_provider.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(loginProvider);
    // final notifier = ref.read(loginProvider.notifier);
    // ...
  }
}
```

**Contoh generated state (`login_state.dart`):**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LoginState;
}
```

**Contoh generated provider (`login_provider.dart`):**
```dart
@riverpod
class Login extends _$Login {
  @override
  LoginState build() => const LoginState();
}
```

Jika Anda memilih `n`, tidak ada modifikasi route yang dilakukan.

### Fitur Unggulan
- ✅ **ConsumerWidget** — View reaktif via `ref.watch`, tanpa `StatefulWidget` boilerplate
- ✅ **State Terpisah** — State immutable berbasis **Freezed** dipisah dari Notifier agar mudah di-test
- ✅ **Code-gen `@riverpod`** — DI otomatis, tanpa perlu file binding
- ✅ **Smart Merge** — Tidak menimpa file/folder yang sudah ada
- ✅ **Route Injector** — Otomatis menambahkan `RoutePaths` dan `GoRoute` ke go_router

---

## 🌟 4. Initial Setup Project Generator

Membuat struktur folder dasar (Clean Architecture) dan *file boilerplate* penting untuk memulai project Flutter dengan Riverpod + go_router.

### Cara Pakai

```
=== Flutter Initial Setup Project Generator ===
🚀 Memulai inisialisasi struktur project...
✅ Created directory: lib/core/const
...
🎉 Inisialisasi struktur project selesai!
```

### Hasil Output

Generator akan membuat struktur folder berikut dan *template* file standar secara otomatis:

```text
lib/
├── core/
│   ├── const/
│   │   └── app_constants.dart
│   ├── error/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── navigation/
│   │   ├── tab_navigation_state.dart
│   │   └── tab_navigation_provider.dart
│   ├── network/
│   │   ├── api_client.dart
│   │   └── api_client_provider.dart
│   ├── router/
│   │   ├── app_router.dart
│   │   └── route_paths.dart
│   └── theme/
│       ├── app_theme.dart
│       └── theme_provider.dart
├── data/
│   ├── model/
│   ├── repository_impl/
│   └── source/
├── domain/
│   ├── entity/
│   ├── repository/
│   └── usecase/
├── presentation/
│   ├── dashboard/
│   │   ├── states/
│   │   │   └── dashboard_state.dart
│   │   ├── providers/
│   │   │   └── dashboard_provider.dart
│   │   └── views/
│   │       └── dashboard_view.dart
│   └── splash/
│       ├── providers/
│       │   └── splash_provider.dart
│       └── views/
│           └── splash_view.dart
├── shared/
│   ├── auth/
│   │   └── auth_provider.dart
│   └── providers/
│       └── shared_preferences_provider.dart
└── main.dart
```

### Fitur Unggulan
- ✅ **Struktur Bersih & Modular** — Menyiapkan hierarki untuk Data, Domain, Presentation, dan Core.
- ✅ **Setup Lengkap `main.dart`** — Terintegrasi dengan `ProviderScope`, `MaterialApp.router` (go_router), `ScreenUtilInit`, tema (*dark/light*), dan inisialisasi zona waktu.
- ✅ **Network via Dio** — `api_client.dart` menggunakan package `Dio` untuk pengelolaan otorisasi token, *error interceptor*, *safe request*, serta *file uploads*.
- ✅ **Error Handling Kuat** — `failures.dart` diimplementasikan dengan `Freezed` (*union class*) dan `exceptions.dart` untuk standardisasi manajemen *error*.
- ✅ **Riverpod + go_router Siap Pakai** — Provider global (`auth`, `apiClient`, `sharedPreferences`, `theme`), `tab_navigation_provider` untuk lazy tab, serta *scaffolding* `SplashView` & `DashboardView` berbasis `ConsumerWidget`.

---

## 📁 Struktur Project

```
flutter_generator/
├── bin/
│   ├── flutter_generator.dart     # Menu utama (entry point)
│   ├── generate.dart              # CLI JSON to Entity & Model
│   ├── generate_usecase.dart      # CLI Usecase Generator
│   ├── generate_page.dart         # CLI Presentation Generator (Riverpod)
│   └── generate_init.dart         # CLI Initial Setup Project Generator
├── lib/
│   ├── flutter_generator.dart     # Barrel export
│   └── src/
│       ├── builder/
│       │   ├── entity_builder.dart
│       │   ├── model_builder.dart
│       │   ├── usecase_builder.dart
│       │   ├── riverpod_presentation_builder.dart
│       │   └── init_builder.dart
│       ├── core/
│       │   ├── models.dart
│       │   ├── string_extensions.dart
│       │   └── route_injector.dart
│       ├── parser/
│       │   ├── json_parser.dart
│       │   └── repository_parser.dart
│       └── generator.dart
├── test/
│   └── flutter_generator_test.dart
├── pubspec.yaml
└── README.md
```

---

## ⚠️ Catatan Penting

1. **Jalankan di root project** — Pastikan terminal Anda berada di root folder project Flutter tujuan (bukan di folder package ini).
2. **Freezed & Build Runner** — Pastikan project tujuan memiliki dependency berikut:
   ```yaml
   dependencies:
     freezed_annotation: ^3.1.0
     json_annotation: ^4.12.0
   dev_dependencies:
     freezed: ^3.2.5
     build_runner: ^2.15.2
     json_serializable: ^6.14.0
   ```
   Lalu jalankan `dart run build_runner build --delete-conflicting-outputs`.
3. **Riverpod + go_router** — Untuk Presentation Generator dan Initial Setup, pastikan dependency berikut sudah terdaftar di project tujuan:
   ```yaml
   dependencies:
     flutter_riverpod: ^3.3.2
     riverpod_annotation: ^4.0.3
     go_router: ^17.3.0
   dev_dependencies:
     riverpod_generator: ^4.0.4
     riverpod_lint: ^3.1.4
     flutter_lints: ^6.0.0
   ```
   Setelah generate, jalankan `dart run build_runner build -d` untuk membuat file `*.g.dart`. `analysis_options.yaml` (dari `gen_init`) sudah memuat plugin `riverpod_lint`. Penjelasan arsitektur lengkap ada di [documentation.md](documentation.md).
4. **Either/fpdart** — Untuk Usecase Generator, pastikan Anda sudah menggunakan package `fpdart` atau `dartz` di repository.

---

## 📄 Lisensi

MIT License - Silakan gunakan, modifikasi, dan distribusikan sesuka hati.

---

*Dibuat dengan ❤️ untuk memudahkan harimu! ☕*
