import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/data/repository_impl/payment_repository_impl.dart';
import 'package:simzakat_baznas_lubuklinggau/data/repository_impl/zakat_repository_impl.dart';
import 'package:simzakat_baznas_lubuklinggau/data/source/payment_datasource.dart';
import 'package:simzakat_baznas_lubuklinggau/data/source/zakat_datasource.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/repository/payment_repository.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/repository/zakat_repository.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/usecase/auth/login_usecase.dart';
import 'package:simzakat_baznas_lubuklinggau/service/auth/auth_service.dart';
import 'package:simzakat_baznas_lubuklinggau/theme/theme_manager.dart';

import '../../core/network/api_client.dart';
import '../../data/repository_impl/auth_repository_impl.dart';
import '../../data/repository_impl/disbursement_repository_impl.dart';
import '../../data/repository_impl/muzzaki_repository_impl.dart';
import '../../data/repository_impl/program_repository_impl.dart';
import '../../data/source/auth_datasource.dart';
import '../../data/source/disbursement_datasource.dart';
import '../../data/source/muzzaki_datasource.dart';
import '../../data/source/program_datasource.dart';
import '../../domain/repository/auth_repository.dart';
import '../../domain/repository/disbursement_repository.dart';
import '../../domain/repository/muzzaki_repository.dart';
import '../../domain/repository/program_repository.dart';
import '../../domain/usecase/auth/register_usecase.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeManager(), permanent: true);

    Get.lazyPut<ApiClient>(() => ApiClient(), fenix: true);

    // 1. Auth
    Get.lazyPut<AuthDatasource>(
      () => AuthDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(Get.find<AuthDatasource>()),
      fenix: true,
    );
    Get.lazyPut(() => LoginUsecase(Get.find<AuthRepository>()));
    Get.lazyPut(() => RegisterUsecase(Get.find<AuthRepository>()));
    Get.put(AuthService(), permanent: true);

    // 2. Muzzaki
    Get.lazyPut<MuzzakiDatasource>(
      () => MuzzakiDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<MuzzakiRepository>(
      () => MuzzakiRepositoryImpl(Get.find<MuzzakiDatasource>()),
      fenix: true,
    );

    // 3. Program
    Get.lazyPut<ProgramDatasource>(
      () => ProgramDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<ProgramRepository>(
      () => ProgramRepositoryImpl(Get.find<ProgramDatasource>()),
      fenix: true,
    );

    // 4. Disbursement / Penyaluran
    Get.lazyPut<DisbursementDatasource>(
      () => DisbursementDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<DisbursementRepository>(
      () => DisbursementRepositoryImpl(Get.find<DisbursementDatasource>()),
      fenix: true,
    );

    // 5. Payment / Pembayaran
    Get.lazyPut<PaymentDatasource>(
      () => PaymentDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<PaymentRepository>(
      () => PaymentRepositoryImpl(Get.find<PaymentDatasource>()),
      fenix: true,
    );

    // 6. Payment / Pembayaran
    Get.lazyPut<ZakatDatasource>(
      () => ZakatDatasourceImpl(Get.find<ApiClient>()),
      fenix: true,
    );
    Get.lazyPut<ZakatRepository>(
      () => ZakatRepositoryImpl(Get.find<ZakatDatasource>()),
      fenix: true,
    );
  }
}
