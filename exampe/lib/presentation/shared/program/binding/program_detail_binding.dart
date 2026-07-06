import 'package:get/get.dart';
import '../../../../domain/repository/disbursement_repository.dart';
import '../../../../domain/repository/program_repository.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/program/detail_program_usecase.dart';
import '../../../../domain/usecase/program/donatur_usecase.dart';
import '../controller/program_detail_controller.dart';

class ProgramDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgramDetailController>(
      () => ProgramDetailController(
        detailProgramUsecase: DetailProgramUsecase(Get.find<ProgramRepository>()),
        donaturUsecase: DonaturUsecase(Get.find<ProgramRepository>()),
        getDisbursementsUsecase: GetDisbursementsUsecase(Get.find<DisbursementRepository>()),
      ),
    );
  }
}
