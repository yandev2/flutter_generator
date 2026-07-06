import 'package:get/get.dart';
import '../controller/mustahik_controller.dart';

class MustahikSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MustahikController>(() => MustahikController());
  }
}
