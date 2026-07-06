import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simzakat_baznas_lubuklinggau/service/auth/auth_service.dart';
import '../../../../core/const/app_constants.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/ui/dialog/app_ui_dialog.dart';
import '../../../../core/ui/theme/app_dialog_theme.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/response/muzakki_contribution_summary_entity.dart';
import '../../../../domain/entity/response/user_data_entity.dart';
import '../../../../domain/usecase/muzzaki/get_contribution_summary_usecase.dart';
import '../../../../domain/usecase/muzzaki/get_muzakki_profile_usecase.dart';
import '../../../../service/routes/route_name.dart';

class ProfileMuzzakiController extends GetxController with TabLoadable {
  final GetMuzzakiProfileUsecase getProfileUsecase;
  final GetContributionSummaryUsecase getContributionSummaryUsecase;
  final ApiClient _apiClient;
  final _authService = Get.find<AuthService>();
  final _prefs = Get.find<SharedPreferences>();

  ProfileMuzzakiController({
    required this.getProfileUsecase,
    required this.getContributionSummaryUsecase,
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final RxBool isLoading = true.obs;
  final Rx<UserDataEntity?> user = Rx(null);
  final Rx<MuzakkiContributionSummaryEntity?> summary = Rx(null);

  @override
  Future<void> loadTabData() => fetchProfile();

  Future<void> fetchProfile() async {
    try {
      isLoading.value = true;

      final profileFuture = getProfileUsecase();
      final summaryFuture = getContributionSummaryUsecase();

      final profileResult = await profileFuture;
      final summaryResult = await summaryFuture;

      user.value = profileResult;
      summary.value = summaryResult;
    } catch (e) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          variant: AppToastVariant.danger,
          message:
              'Gagal memuat profil: ${e.toString().replaceAll('Exception: ', '')}',
        );
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    if (Get.context == null) return;
    final confirmed = await showAppUiDialog<bool>(
      context: Get.context!,
      variant: AppDialogVariant.danger,
      title: 'Konfirmasi Logout',
      message: 'Apakah Anda yakin ingin keluar dari aplikasi?',
      cancelLabel: 'Batal',
      confirmLabel: 'Logout',
      onCancel: () => Get.back(result: false),
      onConfirm: () => Get.back(result: true),
    );
    if (confirmed == true) {
      await _prefs.remove(AppConstants.tokenKey);
      _authService.user.value = null;
      _apiClient.clearToken();
      Get.offAllNamed(RouteName.login);
    }
  }

  @override
  Future<void> refresh() => loadIfNeeded(refresh: true);
}
