import 'package:get/get.dart';
import '../controller/laporan_surveyor_controller.dart';

class ReportSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporanSurveyorController>(() => LaporanSurveyorController());
  }
}
