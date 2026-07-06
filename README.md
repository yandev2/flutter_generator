# 🚀 Flutter Generator Pro

[![Dart](https://img.shields.io/badge/Dart-3.10+-blue.svg)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-Compatible-02569B.svg)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**Flutter Generator Pro** adalah *Custom CLI Package* yang dirancang khusus untuk mempercepat proses *development* aplikasi Flutter yang menggunakan **Clean Architecture** dan **GetX**. Package ini mengotomatisasi pembuatan *boilerplate code* sehingga Anda bisa fokus pada logika bisnis utama.

---

## 📋 Daftar Isi

- [Instalasi](#-instalasi)
- [Cara Penggunaan](#-cara-penggunaan)
- [Generator 1: JSON to Entity & Model](#-1-json-to-entity--model-generator)
- [Generator 2: Usecase Generator](#-2-usecase-generator)
- [Generator 3: GetX Presentation Generator](#-3-getx-presentation-generator)
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
3. GetX Presentation Generator
4. Initial Setup Project Generator
5. Keluar
=====================================
Masukkan pilihan Anda (1/2/3/4/5):
```

Pilih angka sesuai generator yang ingin dijalankan. Anda juga dapat menjalankan masing-masing generator secara langsung:

```bash
dart run flutter_generator:gen_model      # JSON to Entity & Model
dart run flutter_generator:gen_usecase    # Usecase Generator
dart run flutter_generator:gen_getx       # GetX Presentation Generator
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

---

## 🌟 3. GetX Presentation Generator

Membuat *scaffolding* untuk lapisan **Presentation** berbasis GetX secara instan.

### Cara Pakai

```
=== Flutter GetX Presentation Generator ===
Masukkan nama Fitur (contoh: auth): auth
Masukkan nama Page/Layar (contoh: login): login
✅ Generated: .../lib/presentation/auth/controllers/login_controller.dart
✅ Generated: .../lib/presentation/auth/bindings/login_binding.dart
✅ Generated: .../lib/presentation/auth/views/login_view.dart
Apakah Anda ingin meng-inject Route ini ke lib/service/route/? (y/n): y
✅ Injected login ke RouteName.
✅ Injected GetPage login ke AppRoute.
🎉 GetX Presentation Generator Selesai!
```

### Hasil Output — Struktur Folder

```
lib/presentation/auth/
  ├── bindings/
  │    └── login_binding.dart
  ├── controllers/
  │    └── login_controller.dart
  └── views/
       └── login_view.dart
```

### Smart Merge — Menambah Page di Fitur yang Sama

Jika Anda menjalankan lagi dengan fitur `auth` tapi page `register`, file baru akan **ditambahkan** ke folder yang sudah ada, bukan menimpa:

```
lib/presentation/auth/
  ├── bindings/
  │    ├── login_binding.dart
  │    └── register_binding.dart
  ├── controllers/
  │    ├── login_controller.dart
  │    └── register_controller.dart
  └── views/
       ├── login_view.dart
       └── register_view.dart
```

### Route Injection

Jika Anda memilih `y` saat ditanya inject route, generator akan otomatis membuat/memodifikasi dua file:

**`lib/service/route/route_name.dart`**:
```dart
abstract class RouteName {
  static const login = '/login';
  static const register = '/register';
}
```

**`lib/service/route/app_route.dart`**:
```dart
import 'package:get/get.dart';
import 'route_name.dart';
import '../../presentation/auth/bindings/login_binding.dart';
import '../../presentation/auth/views/login_view.dart';
import '../../presentation/auth/bindings/register_binding.dart';
import '../../presentation/auth/views/register_view.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
```

Jika Anda memilih `n`, tidak ada modifikasi route yang dilakukan.

### Fitur Unggulan
- ✅ **GetView Standard** — View langsung menggunakan `GetView<Controller>`, tanpa perlu `Get.find()`
- ✅ **LazyPut Binding** — Binding menggunakan `Get.lazyPut` untuk efisiensi memori
- ✅ **Smart Merge** — Tidak menimpa file/folder yang sudah ada
- ✅ **Route Injector** — Otomatis menambahkan `RouteName` dan `GetPage` ke file routing

---

## 🌟 4. Initial Setup Project Generator

Membuat struktur folder dasar (Clean Architecture) dan *file boilerplate* penting untuk memulai project Flutter dengan GetX.

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
│   ├── mixin/
│   │   ├── lazy_tab_navigation_mixin.dart
│   │   └── tab_loadable_mixin.dart
│   ├── module/
│   ├── network/
│   │   └── api_client.dart
│   └── shared/
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
│   │   ├── bindings/
│   │   │   └── dashboard_binding.dart
│   │   ├── controllers/
│   │   │   └── dashboard_controller.dart
│   │   └── views/
│   │       └── dashboard_view.dart
│   └── main/
│       └── splash_screen/
│           ├── bindings/
│           │   └── splash_screen_binding.dart
│           ├── controllers/
│           │   └── splash_screen_controller.dart
│           └── views/
│               └── splash_screen_view.dart
├── service/
│   ├── auth/
│   │   └── auth_service.dart
│   ├── dependency/
│   │   └── dependency_injection.dart
│   ├── route/
│   │   ├── app_route.dart
│   │   └── route_name.dart
│   └── theme/
│       ├── theme.dart
│       └── theme_manager.dart
└── main.dart
```

### Fitur Unggulan
- ✅ **Struktur Bersih & Modular** — Menyiapkan hierarki untuk Data, Domain, Presentation, dan Core.
- ✅ **Setup Lengkap `main.dart`** — Terintegrasi dengan `GetMaterialApp`, `ScreenUtilInit`, tema (*dark/light*), *routing*, pengaturan zona waktu, dan *scale text* yang dinamis.
- ✅ **Network via Dio** — `api_client.dart` menggunakan package `Dio` untuk pengelolaan otorisasi token, *error interceptor*, *safe request*, serta *file uploads*.
- ✅ **Error Handling Kuat** — `failures.dart` diimplementasikan dengan `Freezed` (*union class*) dan `exceptions.dart` untuk standardisasi manajemen *error*.
- ✅ **GetX Mixins & UI Standar** — Fitur *lazy tab navigation mixin* disiapkan beserta *scaffolding* untuk `SplashScreen` dan `Dashboard` lengkap dengan Controller, Binding, dan View.

---

## 📁 Struktur Project

```
flutter_generator/
├── bin/
│   ├── flutter_generator.dart     # Menu utama (entry point)
│   ├── generate.dart              # CLI JSON to Entity & Model
│   ├── generate_usecase.dart      # CLI Usecase Generator
│   ├── generate_getx.dart         # CLI GetX Presentation Generator
│   └── generate_init.dart         # CLI Initial Setup Project Generator
├── lib/
│   ├── flutter_generator.dart     # Barrel export
│   └── src/
│       ├── builder/
│       │   ├── entity_builder.dart
│       │   ├── model_builder.dart
│       │   ├── usecase_builder.dart
│       │   ├── getx_presentation_builder.dart
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
2. **Freezed & Build Runner** — Pastikan project tujuan Anda memiliki `freezed`, `freezed_annotation`, `build_runner`, `json_serializable`, dan `json_annotation` di `pubspec.yaml`.
3. **GetX** — Untuk GetX Presentation Generator, pastikan `get` sudah terdaftar sebagai dependency di project tujuan.
4. **Either/fpdart** — Untuk Usecase Generator, pastikan Anda sudah menggunakan package `fpdart` atau `dartz` di repository.

---

## 📄 Lisensi

MIT License - Silakan gunakan, modifikasi, dan distribusikan sesuka hati.

---

*Dibuat dengan ❤️ untuk memudahkan harimu! ☕*
