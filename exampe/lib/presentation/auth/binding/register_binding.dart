import 'package:get/instance_manager.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/auth/controller/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
