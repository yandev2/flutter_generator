import 'package:get/get.dart';
import '../controller/survey_form_surveyor_controller.dart';

class SurveyFormSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurveyFormSurveyorController>(
      () => SurveyFormSurveyorController(),
    );
  }
}
