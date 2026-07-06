import 'package:get/instance_manager.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/auth/controller/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
