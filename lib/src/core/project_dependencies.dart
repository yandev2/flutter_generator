/// Dependencies yang di-merge ke pubspec project target saat gen_init.
abstract final class ProjectDependencies {
  static const dependencies = <String, String>{
    'material_ui': '^1.11.1',
    'flutter_riverpod': '^3.5.0',
    'riverpod_annotation': '^4.0.8',
    'go_router': '^18.1.4',
    'dio': '^5.11.1',
    'dartz': '^0.10.1',
    'freezed_annotation': '^3.1.0',
    'json_annotation': '^4.12.0',
    'shared_preferences': '^2.5.6',
    'intl': '^0.20.3',
    'flutter_screenutil': '^5.9.3',
    'flutter_dotenv': '^6.0.2',
    'connectivity_plus': '^7.3.2',
    'riverpod_sqflite': '^0.4.8',
    'sqflite': '^2.4.6',
    'path': '^1.9.1',
  };

  static const devDependencies = <String, String>{
    'flutter_lints': '^6.0.0',
    'build_runner': '^2.17.1',
    'riverpod_generator': '^4.0.10',
    'riverpod_lint': '^3.2.0',
    'freezed': '^4.0.3',
    'json_serializable': '^6.15.2',
  };

  static const assetPaths = [
    '.env',
    'assets/images/',
    'assets/icons/',
  ];

  /// Default environment constraints merged saat gen_init.
  static const defaultSdkConstraint = '^3.14.0';
  static const defaultFlutterConstraint = '>=3.50.0';
}
