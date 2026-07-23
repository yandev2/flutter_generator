/// Dependencies yang di-merge ke pubspec project target saat gen_init.
abstract final class ProjectDependencies {
  static const dependencies = <String, String>{
    'flutter_riverpod': '^3.3.2',
    'riverpod_annotation': '^4.0.3',
    'go_router': '^17.3.0',
    'dio': '^5.10.0',
    'dartz': '^0.10.1',
    'freezed_annotation': '^3.1.0',
    'json_annotation': '^4.12.0',
    'shared_preferences': '^2.5.3',
    'intl': '^0.20.2',
    'flutter_screenutil': '^5.9.3',
    'flutter_dotenv': '^6.0.1',
    'connectivity_plus': '^6.1.4',
    'riverpod_sqflite': '^0.4.3',
    'sqflite': '^2.4.2',
    'path': '^1.9.1',
  };

  static const devDependencies = <String, String>{
    'flutter_lints': '^6.0.0',
    'build_runner': '^2.15.2',
    'riverpod_generator': '^4.0.4',
    'riverpod_lint': '^3.1.4',
    'freezed': '^3.2.6-dev.1',
    'json_serializable': '^6.14.0',
  };

  static const assetPaths = [
    '.env',
    'assets/images/',
    'assets/icons/',
  ];

  /// Default environment constraints merged saat gen_init.
  static const defaultSdkConstraint = '^3.12.0';
  static const defaultFlutterConstraint = '>=3.44.0';
}
