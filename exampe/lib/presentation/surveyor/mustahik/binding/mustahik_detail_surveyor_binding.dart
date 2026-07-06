import 'package:get/get.dart';
import '../controller/mustahik_detail_surveyor_controller.dart';

class MustahikDetailSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MustahikDetailSurveyorController>(() => MustahikDetailSurveyorController());
  }
}
