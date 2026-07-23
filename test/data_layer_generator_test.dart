import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/datasource_builder.dart';
import 'package:flutter_generator/src/builder/presentation_wiring_builder.dart';
import 'package:flutter_generator/src/builder/repository_impl_builder.dart';
import 'package:flutter_generator/src/core/data_wiring_injector.dart';
import 'package:flutter_generator/src/parser/repository_parser.dart';

void main() {
  const authRepositorySource = '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/request/auth_request_entity.dart';
import '../entities/response/auth_response_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseEntity>> autoLogin(String? fcmToken);
  Future<Either<Failure, AuthResponseEntity>> login(AuthRequestEntity data);
  Future<Either<Failure, bool>> logout();
  Future<Either<Failure, String?>> resetPassword(String email);
}
''';

  late Directory tempDir;
  late ParsedRepository parsedRepo;
  late String repoPath;
  late String repositoryImplPath;

  setUp(() {
    tempDir = Directory.systemTemp.createTempSync('data_layer_generator_test_');
    final repoDir = Directory(
      '${tempDir.path}/lib/features/auth/domain/repositories',
    )..createSync(recursive: true);
    repoPath = '${repoDir.path}/auth_repository.dart';
    File(repoPath).writeAsStringSync(authRepositorySource);

    Directory('${tempDir.path}/lib/features/auth/data/datasources')
        .createSync(recursive: true);
    Directory('${tempDir.path}/lib/features/auth/data/repositories')
        .createSync(recursive: true);

    repositoryImplPath =
        '${tempDir.path}/lib/features/auth/data/repositories/auth_repository_impl.dart';

    parsedRepo = RepositoryParser().parse(repoPath, 'AuthRepository');
  });

  tearDown(() {
    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  });

  group('DatasourceBuilder', () {
    test('generates datasource with endpoint from method name', () {
      final code = DatasourceBuilder().build(repository: parsedRepo);

      expect(code, contains('abstract class AuthDatasource'));
      expect(code, contains('class AuthDatasourceImpl extends AuthDatasource'));
      expect(code, contains("await _client.get('/auto_login', query: query);"));
      expect(code, contains("await _client.post('/login', body: data.toJson());"));
      expect(code, contains("await _client.post('/logout');"));
      expect(code, contains("'/reset_password'"));
      expect(code, contains('_client.setToken(user.token!);'));
      expect(code, contains("import '../models/auth_response_model.dart';"));
      expect(code, contains("import '../models/auth_request_model.dart';"));
    });
  });

  group('RepositoryImplBuilder', () {
    test('maps entity params via fromEntity and returns toEntity', () {
      final code = RepositoryImplBuilder().build(
        repository: parsedRepo,
        repositoryFilePath: repoPath,
        repositoryImplFilePath: repositoryImplPath,
      );

      expect(code, contains('class AuthRepositoryImpl implements AuthRepository'));
      expect(code, contains('final AuthDatasource _datasource;'));
      expect(
        code,
        contains(
          'await _datasource.login(AuthRequestModel.fromEntity(data));',
        ),
      );
      expect(code, contains('return Right(result.toEntity());'));
      expect(code, contains('return Right(result);'));
      expect(code, contains("import '../datasources/auth_datasource.dart';"));
      expect(code, contains("import '../../domain/repositories/auth_repository.dart';"));
      expect(code, contains("import 'package:dartz/dartz.dart';"));
      expect(code, contains('Failure.unauthorized'));
    });

    test('named parameters use correct call syntax in datasource call', () {
      const repoSource = '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/paginated_list_entity.dart';
import '../entities/inventory_item_list_entity.dart';

abstract class ZakatRepository {
  Future<Either<Failure, PaginatedListEntity<InventoryItemListEntity>>>
      getHistory({String? status, int page = 1});
}
''';
      final repoDir = Directory(
        '${tempDir.path}/lib/features/zakat/domain/repositories',
      )..createSync(recursive: true);
      final zakatRepoPath = '${repoDir.path}/zakat_repository.dart';
      File(zakatRepoPath).writeAsStringSync(repoSource);

      final parsed = RepositoryParser().parse(zakatRepoPath, 'ZakatRepository');
      final method = parsed.methods.single;
      final implPath =
          '${tempDir.path}/lib/features/zakat/data/repositories/zakat_repository_impl.dart';

      final code = RepositoryImplBuilder().build(
        repository: parsed,
        repositoryFilePath: zakatRepoPath,
        repositoryImplFilePath: implPath,
      );

      expect(
        code,
        contains('await _datasource.getHistory(status: status, page: page);'),
      );
    });
  });

  group('PresentationWiringBuilder data chain', () {
    final builder = PresentationWiringBuilder();

    test('buildDatasourceProvider wires ApiClient to AuthDatasourceImpl', () {
      final code =
          builder.buildDatasourceProvider(repositoryName: 'AuthRepository');

      expect(code, contains('AuthDatasource authDatasource(Ref ref)'));
      expect(code, contains('AuthDatasourceImpl(ref.watch(apiClientProvider))'));
      expect(
        code,
        contains("import '../../data/datasources/auth_datasource.dart';"),
      );
    });

    test('buildRepositoryProvider wires datasource to repository impl', () {
      final code =
          builder.buildRepositoryProvider(repositoryName: 'AuthRepository');

      expect(code, contains('AuthRepository authRepository(Ref ref)'));
      expect(
        code,
        contains('AuthRepositoryImpl(ref.watch(authDatasourceProvider))'),
      );
      expect(
        code,
        contains("import '../../data/repositories/auth_repository_impl.dart';"),
      );
      expect(code, contains("import 'auth_datasource_provider.dart';"));
      expect(code, isNot(contains('apiClientProvider')));
    });
  });

  group('DataWiringInjector', () {
    test('generates datasource, repository, and usecase providers', () {
      DataWiringInjector(tempDir.path).injectAll(
        featureName: 'auth',
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
        File('$providersDir/logout_usecase_provider.dart').existsSync(),
        isTrue,
      );

      final repoProvider =
          File('$providersDir/auth_repository_provider.dart').readAsStringSync();
      expect(repoProvider, contains('authDatasourceProvider'));
      expect(repoProvider, isNot(contains('apiClientProvider')));
    });
  });
}
