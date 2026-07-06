import 'package:get/get.dart';
import '../../dashboard/binding/dashboard_surveyor_binding.dart';
import '../../survey_task/binding/task_surveyor_binding.dart';
import '../../mustahik/binding/mustahik_surveyor_binding.dart';
import '../../laporan/binding/report_surveyor_binding.dart';
import '../../profile/binding/profile_surveyor_binding.dart';
import '../controller/navigation_amil_surveyor_controller.dart';

class NavigationAmilSurveyorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationAmilSurveyorController>(() => NavigationAmilSurveyorController());

    DashboardSurveyorBinding().dependencies();
    TaskSurveyorBinding().dependencies();
    MustahikSurveyorBinding().dependencies();
    ReportSurveyorBinding().dependencies();
    ProfileSurveyorBinding().dependencies();
  }
}
