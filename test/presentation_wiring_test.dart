import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/presentation_wiring_builder.dart';
import 'package:flutter_generator/src/core/presentation_wiring_injector.dart';
import 'package:flutter_generator/src/parser/repository_parser.dart';

void main() {
  group('PresentationWiringBuilder', () {
    final builder = PresentationWiringBuilder();

    test('buildRepositoryProvider wires AuthRepository to impl', () {
      final code = builder.buildRepositoryProvider('AuthRepository');

      expect(code, contains('auth_repository_provider.g.dart'));
      expect(code, contains('@Riverpod(keepAlive: true)'));
      expect(code, contains('AuthRepository authRepository(Ref ref)'));
      expect(code, contains('AuthRepositoryImpl('));
      expect(code, contains('ref.watch(apiClientProvider)'));
      expect(
        code,
        contains("import '../../../domain/repository/auth_repository.dart';"),
      );
    });

    test('buildUsecaseProvider wires LoginUsecase to authRepositoryProvider', () {
      final code = builder.buildUsecaseProvider(
        pageName: 'login',
        repositoryName: 'AuthRepository',
        usecaseFolderName: 'auth_usecase',
      );

      expect(code, contains('login_usecase_provider.g.dart'));
      expect(code, contains("import 'auth_repository_provider.dart';"));
      expect(code, contains('LoginUsecase loginUsecase(Ref ref)'));
      expect(code, contains('ref.watch(authRepositoryProvider)'));
      expect(
        code,
        contains("import '../../../domain/usecase/auth_usecase/login_usecase.dart';"),
      );
    });

    test('usecaseFolderNameFromRepository strips Repository suffix', () {
      expect(
        PresentationWiringBuilder.usecaseFolderNameFromRepository('AuthRepository'),
        'auth_usecase',
      );
    });
  });

  group('PresentationWiringInjector', () {
    late Directory tempDir;
    late ParsedRepository parsedRepo;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('presentation_wiring_test_');
      final repoDir = Directory('${tempDir.path}/lib/domain/repository');
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

    test('generates repository and usecase providers for matching page', () {
      PresentationWiringInjector(tempDir.path).inject(
        featureName: 'auth',
        pageName: 'login',
        repositoryName: 'AuthRepository',
        methods: parsedRepo.methods,
      );

      final providersDir = '${tempDir.path}/lib/presentation/auth/providers';
      expect(
        File('$providersDir/auth_repository_provider.dart').existsSync(),
        isTrue,
      );
      expect(
        File('$providersDir/login_usecase_provider.dart').existsSync(),
        isTrue,
      );

      final usecaseProvider =
          File('$providersDir/login_usecase_provider.dart').readAsStringSync();
      expect(usecaseProvider, contains('LoginUsecase loginUsecase(Ref ref)'));
      expect(usecaseProvider, contains('ref.watch(authRepositoryProvider)'));
    });

    test('skips duplicate repository provider', () {
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
        Directory('${tempDir.path}/lib/presentation/auth/providers')
            .listSync()
            .where(
              (entity) =>
                  entity.path.endsWith('auth_repository_provider.dart'),
            )
            .length,
        1,
      );
      expect(
        File(
          '${tempDir.path}/lib/presentation/auth/providers/register_usecase_provider.dart',
        ).existsSync(),
        isTrue,
      );
    });

    test('links existing page provider to usecase provider', () {
      final providersDir = Directory(
        '${tempDir.path}/lib/presentation/auth/providers',
      )..createSync(recursive: true);
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
