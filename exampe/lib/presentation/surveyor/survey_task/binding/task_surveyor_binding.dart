import 'package:get/get.dart';

import '../controller/task_surveyor_controller.dart';

class TaskSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskSurveyorController>(() => TaskSurveyorController());
  }
}
