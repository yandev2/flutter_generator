import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/src/builder/usecase_builder.dart';
import 'package:flutter_generator/src/parser/repository_parser.dart';

void main() {
  late Directory tempDir;
  late RepositoryParser parser;
  late UsecaseBuilder builder;

  setUp(() {
    tempDir = Directory.systemTemp.createTempSync('usecase_generator_test_');
    parser = RepositoryParser();
    builder = UsecaseBuilder();
  });

  tearDown(() {
    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  });

  String writeRepository(String fileName, String content) {
    final repoDir = Directory(
      '${tempDir.path}/lib/features/auth/domain/repositories',
    );
    repoDir.createSync(recursive: true);
    final file = File('${repoDir.path}/$fileName');
    file.writeAsStringSync(content);
    return file.path;
  }

  String usecasePath(String fileName) {
    final usecaseDir = Directory(
      '${tempDir.path}/lib/features/auth/domain/usecases',
    );
    usecaseDir.createSync(recursive: true);
    return '${usecaseDir.path}/$fileName';
  }

  List<String> extractImports(String code) {
    return code
        .split('\n')
        .where((line) => line.startsWith('import '))
        .map((line) => line.trim())
        .toList();
  }

  group('RepositoryParser', () {
    test('extracts required types per method from AST', () {
      final repoPath = writeRepository(
        'auth_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/request/auth_entity.dart';
import '../entities/request/register_request_entity.dart';
import '../entities/response/register_response_entity.dart';
import '../entities/response/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> autoLogin(String token);
  Future<Either<Failure, UserEntity>> login(AuthEntity data);
  Future<Either<Failure, RegisterResponseEntity>> register(RegisterRequestEntity data);
}
''',
      );

      final parsed = parser.parse(repoPath, 'AuthRepository');

      final login = parsed.methods.firstWhere((m) => m.name == 'login');
      expect(login.requiredTypes, {'AuthEntity', 'UserEntity'});

      final autoLogin = parsed.methods.firstWhere((m) => m.name == 'autoLogin');
      expect(autoLogin.requiredTypes, {'UserEntity'});

      final register = parsed.methods.firstWhere((m) => m.name == 'register');
      expect(
        register.requiredTypes,
        {'RegisterRequestEntity', 'RegisterResponseEntity'},
      );

      expect(parsed.parsedImports.length, 6);
    });

    test('extracts generic nested types', () {
      final repoPath = writeRepository(
        'zakat_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/response/inventory_item_entity.dart';

abstract class ZakatRepository {
  Future<Either<Failure, List<InventoryItemEntity>>> getInventoryItems();
}
''',
      );

      final parsed = parser.parse(repoPath, 'ZakatRepository');
      final method = parsed.methods.single;

      expect(method.requiredTypes, {'InventoryItemEntity'});
    });
  });

  group('UsecaseBuilder imports', () {
    test('login usecase only imports types used by login method', () {
      final repoPath = writeRepository(
        'auth_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/request/auth_entity.dart';
import '../entities/request/register_request_entity.dart';
import '../entities/response/register_response_entity.dart';
import '../entities/response/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> autoLogin(String token);
  Future<Either<Failure, UserEntity>> login(AuthEntity data);
  Future<Either<Failure, RegisterResponseEntity>> register(RegisterRequestEntity data);
}
''',
      );

      final parsed = parser.parse(repoPath, 'AuthRepository');
      final login = parsed.methods.firstWhere((m) => m.name == 'login');
      final usecaseFilePath = usecasePath('login_usecase.dart');

      final code = builder.build(
        parsed,
        login,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import '../entities/request/auth_entity.dart';",
        "import '../entities/response/user_entity.dart';",
        "import '../repositories/auth_repository.dart';",
      ]);
      expect(code.contains('dartz'), isFalse);
      expect(code.contains('failures.dart'), isFalse);
      expect(code.contains('register_request_entity'), isFalse);
    });

    test('autoLogin usecase only imports user entity', () {
      final repoPath = writeRepository(
        'auth_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/request/auth_entity.dart';
import '../entities/response/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> autoLogin(String token);
  Future<Either<Failure, UserEntity>> login(AuthEntity data);
}
''',
      );

      final parsed = parser.parse(repoPath, 'AuthRepository');
      final autoLogin = parsed.methods.firstWhere((m) => m.name == 'autoLogin');
      final usecaseFilePath = usecasePath('auto_login_usecase.dart');

      final code = builder.build(
        parsed,
        autoLogin,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import '../entities/response/user_entity.dart';",
        "import '../repositories/auth_repository.dart';",
      ]);
    });

    test('getInventoryItems includes inventory entity import with rewritten path', () {
      final repoPath = writeRepository(
        'zakat_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/response/inventory_item_entity.dart';

abstract class ZakatRepository {
  Future<Either<Failure, List<InventoryItemEntity>>> getInventoryItems();
}
''',
      );

      final parsed = parser.parse(repoPath, 'ZakatRepository');
      final method = parsed.methods.single;
      final usecaseFilePath =
          usecasePath('get_inventory_items_usecase.dart');

      final code = builder.build(
        parsed,
        method,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import '../entities/response/inventory_item_entity.dart';",
        "import '../repositories/zakat_repository.dart';",
      ]);
    });

    test('getHistoryTransaction imports paginated and item list entities', () {
      final repoPath = writeRepository(
        'muzzaki_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import 'package:simzakat_app/domain/entities/response/muzzaki_transaction_history_entity.dart';
import '../../../../core/errors/failures.dart';
import '../entities/paginated_list_entity.dart';
import '../entities/response/muzzaki_transaction_item_list_entity.dart';

abstract class MuzzakiRepository {
  Future<Either<Failure, PaginatedListEntity<MuzzakiTransactionItemListEntity>>>
      getHistoryTransaction({String? status, int page = 1});
  Future<Either<Failure, MuzzakiTransactionHistoryEntity>> detailTransaction(int transactionId);
}
''',
      );

      final parsed = parser.parse(repoPath, 'MuzzakiRepository');
      final method =
          parsed.methods.firstWhere((m) => m.name == 'getHistoryTransaction');
      final usecaseFilePath =
          usecasePath('get_history_transaction_usecase.dart');

      final code = builder.build(
        parsed,
        method,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import '../entities/paginated_list_entity.dart';",
        "import '../entities/response/muzzaki_transaction_item_list_entity.dart';",
        "import '../repositories/muzzaki_repository.dart';",
      ]);
      expect(code.contains('muzzaki_transaction_history_entity'), isFalse);
      expect(code.contains('dartz'), isFalse);
      expect(code.contains('failures.dart'), isFalse);
    });

    test('detailTransaction includes package import when type is only from package', () {
      final repoPath = writeRepository(
        'muzzaki_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import 'package:simzakat_app/domain/entities/response/muzzaki_transaction_history_entity.dart';
import '../../../../core/errors/failures.dart';

abstract class MuzzakiRepository {
  Future<Either<Failure, MuzzakiTransactionHistoryEntity>> detailTransaction(int transactionId);
}
''',
      );

      final parsed = parser.parse(repoPath, 'MuzzakiRepository');
      final method =
          parsed.methods.firstWhere((m) => m.name == 'detailTransaction');
      final usecaseFilePath =
          usecasePath('detail_transaction_usecase.dart');

      final code = builder.build(
        parsed,
        method,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import 'package:simzakat_app/domain/entities/response/muzzaki_transaction_history_entity.dart';",
        "import '../repositories/muzzaki_repository.dart';",
      ]);
    });

    test('disbursement usecase rewrites core-relative imports correctly', () {
      final repoPath = writeRepository(
        'disbursement_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/response/disbursement_entity.dart';
import '../entities/response/disbursement_item_list_entity.dart';
import '../entities/paginated_list_entity.dart';

abstract class DisbursementRepository {
  Future<Either<Failure, PaginatedListEntity<DisbursementItemListEntity>>> getDisbursements({
    int? programId,
    int page = 1,
  });
  Future<Either<Failure, DisbursementEntity>> detailDisbursement(int disbursementId);
}
''',
      );

      final parsed = parser.parse(repoPath, 'DisbursementRepository');
      final method =
          parsed.methods.firstWhere((m) => m.name == 'detailDisbursement');
      final usecaseFilePath =
          usecasePath('detail_disbursement_usecase.dart');

      final code = builder.build(
        parsed,
        method,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      final imports = extractImports(code);
      expect(imports, [
        "import '../entities/response/disbursement_entity.dart';",
        "import '../repositories/disbursement_repository.dart';",
      ]);
      expect(code.contains("import '../entity/"), isFalse);
      expect(code.contains('failures.dart'), isFalse);
    });

    test('payment usecase generates named parameter call', () {
      final repoPath = writeRepository(
        'payment_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/request/payment_request_entity.dart';
import '../entities/response/payment_response_entity.dart';

abstract class PaymentRepository {
  Future<Either<Failure, PaymentResponseEntity>> payment(
    PaymentRequestEntity param, {
    bool asGuest = false,
  });
}
''',
      );

      final parsed = parser.parse(repoPath, 'PaymentRepository');
      final method = parsed.methods.single;

      expect(method.parameterCall, 'param, asGuest: asGuest');

      final usecaseFilePath = usecasePath('payment_usecase.dart');
      final code = builder.build(
        parsed,
        method,
        repositoryFilePath: repoPath,
        usecaseFilePath: usecaseFilePath,
      );

      expect(
        code,
        contains('repository.payment(param, asGuest: asGuest)'),
      );
    });

    test('getHistoryTransaction generates named parameter call', () {
      final repoPath = writeRepository(
        'muzzaki_repository.dart',
        '''
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/paginated_list_entity.dart';
import '../entities/response/muzzaki_transaction_item_list_entity.dart';

abstract class MuzzakiRepository {
  Future<Either<Failure, PaginatedListEntity<MuzzakiTransactionItemListEntity>>>
      getHistoryTransaction({String? status, int page = 1});
}
''',
      );

      final parsed = parser.parse(repoPath, 'MuzzakiRepository');
      final method =
          parsed.methods.firstWhere((m) => m.name == 'getHistoryTransaction');

      expect(method.parameterCall, 'status: status, page: page');
    });
  });
}
