import 'package:get/get.dart';
import '../../../../domain/repository/zakat_repository.dart';
import '../../../../domain/usecase/zakat/calculate_zakat_usecase.dart';
import '../controller/zakat_calculate_controller.dart';

class ZakatCalculateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatCalculateController>(
      () => ZakatCalculateController(
        calculateZakatUsecase: CalculateZakatUsecase(
          Get.find<ZakatRepository>(),
        ),
      ),
    );
  }
}
