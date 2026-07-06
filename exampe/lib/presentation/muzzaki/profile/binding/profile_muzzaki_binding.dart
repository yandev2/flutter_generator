import 'package:get/get.dart';
import '../../../../core/network/api_client.dart';
import '../../../../domain/repository/muzzaki_repository.dart';
import '../../../../domain/usecase/muzzaki/get_contribution_summary_usecase.dart';
import '../../../../domain/usecase/muzzaki/get_muzakki_profile_usecase.dart';
import '../controller/profile_muzzaki_controller.dart';

class ProfileMuzzakiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileMuzzakiController>(
      () => ProfileMuzzakiController(
        getProfileUsecase: GetMuzzakiProfileUsecase(
          Get.find<MuzzakiRepository>(),
        ),
        getContributionSummaryUsecase: GetContributionSummaryUsecase(
          Get.find<MuzzakiRepository>(),
        ),
        apiClient: Get.find<ApiClient>(),
      ),
    );
  }
}
