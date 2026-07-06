import 'package:get/get.dart';
import '../../../../domain/repository/program_repository.dart';
import '../../../../domain/usecase/program/get_program_usecase.dart';
import '../controller/program_main_controller.dart';

class ProgramMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgramMainController>(
      () => ProgramMainController(
        getProgramUsecase: GetProgramUsecase(Get.find<ProgramRepository>()),
      ),
    );
  }
}
