import 'package:get/get.dart';
import '../../../../core/mixin/lazy_tab_navigation_mixin.dart';
import '../../dashboard/controller/dashboard_surveyor_controller.dart';
import '../../survey_task/controller/task_surveyor_controller.dart';
import '../../mustahik/controller/mustahik_controller.dart';
import '../../laporan/controller/laporan_surveyor_controller.dart';
import '../../profile/controller/profile_surveyor_controller.dart';

class NavigationAmilSurveyorController extends GetxController with LazyTabNavigation {
  @override
  int get tabCount => 5;

  @override
  Future<void> loadTabController(int index, {bool refresh = false}) async {
    switch (index) {
      case 0:
        if (Get.isRegistered<DashboardSurveyorController>()) {
          await Get.find<DashboardSurveyorController>().loadIfNeeded(refresh: refresh);
        }
      case 1:
        if (Get.isRegistered<TaskSurveyorController>()) {
          await Get.find<TaskSurveyorController>().loadIfNeeded(refresh: refresh);
        }
      case 2:
        if (Get.isRegistered<MustahikController>()) {
          await Get.find<MustahikController>().loadIfNeeded(refresh: refresh);
        }
      case 3:
        if (Get.isRegistered<LaporanSurveyorController>()) {
          await Get.find<LaporanSurveyorController>().loadIfNeeded(refresh: refresh);
        }
      case 4:
        if (Get.isRegistered<ProfileSurveyorController>()) {
          await Get.find<ProfileSurveyorController>().loadIfNeeded(refresh: refresh);
        }
    }
  }
}
