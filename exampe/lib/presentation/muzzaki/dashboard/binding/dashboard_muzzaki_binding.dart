import 'package:get/get.dart';
import '../../../../domain/repository/disbursement_repository.dart';
import '../../../../domain/repository/muzzaki_repository.dart';

import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/muzzaki/get_muzakki_dashboard_usecase.dart';
import '../controller/dashboard_muzzaki_controller.dart';

class DashboardMuzzakiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardMuzzakiController>(
      () => DashboardMuzzakiController(
        getDashboardUsecase: GetMuzzakiDashboardUsecase(
          Get.find<MuzzakiRepository>(),
        ),
        getDisbursementsUsecase: GetDisbursementsUsecase(
          Get.find<DisbursementRepository>(),
        ),
      ),
    );
  }
}
