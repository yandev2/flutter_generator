import 'package:get/get.dart';
import '../../../../domain/repository/disbursement_repository.dart';
import '../../../../domain/usecase/disbursement/detail_disbursement_usecase.dart';
import '../controller/disbursement_detail_controller.dart';

class DisbursementDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisbursementDetailController>(
      () => DisbursementDetailController(
        detailDisbursementUsecase: DetailDisbursementUsecase(Get.find<DisbursementRepository>()),
      ),
    );
  }
}
