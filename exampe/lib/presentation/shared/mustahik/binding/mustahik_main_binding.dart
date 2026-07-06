import 'package:get/get.dart';
import '../controller/mustahik_main_controller.dart';

class MustahikMainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MustahikMainController>(() => MustahikMainController());
  }
}
