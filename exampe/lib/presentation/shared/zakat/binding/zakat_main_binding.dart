import 'package:get/get.dart';

import '../../../../domain/repository/zakat_repository.dart';
import '../../../../domain/usecase/zakat/get_zakat_type_usecase.dart';
import '../controller/zakat_main_controller.dart';

class ZakatMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZakatMainController>(
      () => ZakatMainController(
        getZakatTypeUsecase: GetZakatTypeUsecase(Get.find<ZakatRepository>()),
      ),
    );
  }
}
