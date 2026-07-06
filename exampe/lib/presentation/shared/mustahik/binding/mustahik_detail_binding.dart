import 'package:get/get.dart';
import '../controller/mustahik_detail_controller.dart';

class MustahikDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MustahikDetailController>(() => MustahikDetailController());
  }
}
