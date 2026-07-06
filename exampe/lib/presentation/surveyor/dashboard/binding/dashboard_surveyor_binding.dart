import 'package:get/get.dart';
import '../controller/dashboard_surveyor_controller.dart';

class DashboardSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardSurveyorController>(
      () => DashboardSurveyorController(),
    );
  }
}
