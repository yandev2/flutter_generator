import 'package:get/get.dart';
import '../../../../domain/repository/disbursement_repository.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../controller/disbursement_main_controller.dart';

class DisbursementMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisbursementMainController>(
      () => DisbursementMainController(
        getDisbursementsUsecase: GetDisbursementsUsecase(Get.find<DisbursementRepository>()),
      ),
    );
  }
}
