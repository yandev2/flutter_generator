import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/presentation_wiring_builder.dart';
import 'package:flutter_generator/src/core/presentation_wiring_injector.dart';
import 'package:flutter_generator/src/parser/repository_parser.dart';

void main() {
  group('PresentationWiringBuilder', () {
    final builder = PresentationWiringBuilder();

    test('buildRepositoryProvider wires AuthRepository to impl via datasource', () {
      final code = builder.buildRepositoryProvider(
        repositoryName: 'AuthRepository',
      );

      expect(code, contains('auth_repository_provider.g.dart'));
      expect(code, contains('@Riverpod(keepAlive: true)'));
      expect(code, contains('AuthRepository authRepository(Ref ref)'));
      expect(code, contains('AuthRepositoryImpl(ref.watch(authDatasourceProvider))'));
      expect(
        code,
        contains("import '../../domain/repositories/auth_repository.dart';"),
      );
      expect(
        code,
        contains("import '../../data/repositories/auth_repository_impl.dart';"),
      );
      expect(code, contains("import 'auth_datasource_provider.dart';"));
    });

    test('buildDatasourceProvider wires AuthDatasource to ApiClient', () {
      final code = builder.buildDatasourceProvider(
        repositoryName: 'AuthRepository',
      );

      expect(code, contains('auth_datasource_provider.g.dart'));
      expect(code, contains('AuthDatasource authDatasource(Ref ref)'));
      expect(code, contains('AuthDatasourceImpl(ref.watch(apiClientProvider))'));
      expect(
        code,
        contains("import '../../data/datasources/auth_datasource.dart';"),
      );
      expect(
        code,
        contains("import '../../../../core/network/api_client_provider.dart';"),
      );
    });

    test('buildUsecaseProvider wires LoginUsecase to authRepositoryProvider', () {
      final code = builder.buildUsecaseProvider(
        pageName: 'login',
        repositoryName: 'AuthRepository',
      );

      expect(code, contains('login_usecase_provider.g.dart'));
      expect(code, contains("import 'auth_repository_provider.dart';"));
      expect(code, contains('LoginUsecase loginUsecase(Ref ref)'));
      expect(code, contains('ref.watch(authRepositoryProvider)'));
      expect(
        code,
        contains("import '../../domain/usecases/login_usecase.dart';"),
      );
    });
  });

  group('PresentationWiringInjector', () {
    late Directory tempDir;
    late ParsedRepository parsedRepo;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('presentation_wiring_test_');
      final repoDir = Directory(
        '${tempDir.path}/lib/features/auth/domain/repositories',
      );
      repoDir.createSync(recursive: true);
      File('${repoDir.path}/auth_repository.dart').writeAsStringSync('''
abstract class AuthRepository {
  Future<void> login();
  Future<void> register();
}
''');
      parsedRepo = RepositoryParser().parse(
        '${repoDir.path}/auth_repository.dart',
        'AuthRepository',
      );
    });

    tearDown(() {
      if (tempDir.existsSync()) {
        tempDir.deleteSync(recursive: true);
      }
    });

    test('generates full provider chain for matching page', () {
      PresentationWiringInjector(tempDir.path).inject(
        featureName: 'auth',
        pageName: 'login',
        repositoryName: 'AuthRepository',
        methods: parsedRepo.methods,
      );

      final providersDir =
          '${tempDir.path}/lib/features/auth/presentation/providers';
      expect(
        File('$providersDir/auth_datasource_provider.dart').existsSync(),
        isTrue,
      );
      expect(
        File('$providersDir/auth_repository_provider.dart').existsSync(),
        isTrue,
      );
      expect(
        File('$providersDir/login_usecase_provider.dart').existsSync(),
        isTrue,
      );
      expect(
        File('$providersDir/register_usecase_provider.dart').existsSync(),
        isTrue,
      );

      final usecaseProvider =
          File('$providersDir/login_usecase_provider.dart').readAsStringSync();
      expect(usecaseProvider, contains('LoginUsecase loginUsecase(Ref ref)'));
      expect(usecaseProvider, contains('ref.watch(authRepositoryProvider)'));
    });

    test('skips duplicate datasource provider', () {
      final injector = PresentationWiringInjector(tempDir.path);
      injector.inject(
        featureName: 'auth',
        pageName: 'login',
        repositoryName: 'AuthRepository',
        methods: parsedRepo.methods,
      );
      injector.inject(
        featureName: 'auth',
        pageName: 'register',
        repositoryName: 'AuthRepository',
        methods: parsedRepo.methods,
      );

      expect(
        Directory(providersDirPath(tempDir))
            .listSync()
            .where(
              (entity) =>
                  entity.path.endsWith('auth_datasource_provider.dart'),
            )
            .length,
        1,
      );
    });

    test('links existing page provider to usecase provider', () {
      final providersDir = Directory(providersDirPath(tempDir))
        ..createSync(recursive: true);
      File('${providersDir.path}/login_provider.dart').writeAsStringSync('''
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _\$Login {
  @override
  bool build() => false;

  // TODO: Implement Login logic
}
''');

      PresentationWiringInjector(tempDir.path).inject(
        featureName: 'auth',
        pageName: 'login',
        repositoryName: 'AuthRepository',
        methods: parsedRepo.methods,
      );

      final content = File('${providersDir.path}/login_provider.dart')
          .readAsStringSync();
      expect(content, contains("import 'login_usecase_provider.dart';"));
      expect(content, contains('ref.read(loginUsecaseProvider)'));
    });
  });
}

String providersDirPath(Directory tempDir) =>
    '${tempDir.path}/lib/features/auth/presentation/providers';
