import 'package:get/get.dart';
import '../../../../core/network/api_client.dart';
import '../../../../domain/repository/amil_surveyor_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../controller/profile_surveyor_controller.dart';

class ProfileSurveyorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileSurveyorController>(() => ProfileSurveyorController());
  }
}
