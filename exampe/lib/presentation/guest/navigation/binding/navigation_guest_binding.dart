import 'package:get/get.dart';
import '../../../shared/disbursement/binding/disbursement_main_binding.dart';
import '../../../shared/program/binding/program_main_binding.dart';
import '../../dashboard/binding/guest_dashboard_binding.dart';
import '../controller/guest_navigation_controller.dart';

class GuestNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuestNavigationController>(() => GuestNavigationController());
    GuestDashboardBinding().dependencies();
    ProgramMainBinding().dependencies();
    DisbursementMainBinding().dependencies();
  }
}
