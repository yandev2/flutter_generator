import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/main_screen/controller/introduction_controller.dart';

class IntroductionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(IntroductionController());
  }
}
