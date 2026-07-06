import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/repository/zakat_repository.dart';
import '../../../../domain/repository/disbursement_repository.dart';
import '../../../../domain/repository/program_repository.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/program/get_program_usecase.dart';
import '../../../../domain/usecase/zakat/get_nisab_usecase.dart';
import '../controller/guest_dashboard_controller.dart';

class GuestDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuestDashboardController>(
      () => GuestDashboardController(
        getProgramUsecase: GetProgramUsecase(Get.find<ProgramRepository>()),
        getDisbursementsUsecase: GetDisbursementsUsecase(Get.find<DisbursementRepository>()),
        getNisabUsecase: GetNisabUsecase(Get.find<ZakatRepository>()),
      ),
    );
  }
}
