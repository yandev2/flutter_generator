import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/request/auth_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/request/register_request_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/user_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/usecase/auth/login_usecase.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/usecase/auth/register_usecase.dart';
import '../../core/const/app_constants.dart';
import '../../core/ui/dialog/app_ui_dialog.dart';
import '../../core/ui/theme/app_dialog_theme.dart';
import '../../domain/repository/auth_repository.dart';
import '../routes/route_name.dart';

class AuthService extends GetxService {
  final Rx<UserEntity?> user = Rx<UserEntity?>(null);
  final _prefs = Get.find<SharedPreferences>();
  final _authRepository = Get.find<AuthRepository>();
  final registerUsecase = Get.find<RegisterUsecase>();
  final loginUsecase = Get.find<LoginUsecase>();

  final isLoading = false.obs;
  @override
  void onReady() {
    super.onReady();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    printInfo(info: "InitializeApp");

    final token = _prefs.getString(AppConstants.tokenKey);
    final introduction = _prefs.getBool(AppConstants.introduction);
    await Future.delayed(const Duration(seconds: 4));
    if (introduction == null) {
      Get.toNamed(RouteName.intro);
      return;
    }
    if (token == null || token.isEmpty) {
      user.value = null;
      Get.offAllNamed(RouteName.guest);
      return;
    }
    await _autoLogin(token);
  }

  Future<void> _autoLogin(String token) async {
    final either = await _authRepository.autoLogin(token);
    either.fold((failure) => Get.offAllNamed(RouteName.guest), (users) {
      user.value = users;
      _redirect(user.value?.user?.roleCode ?? '');
    });
  }

  Future<void> register(RegisterRequestEntity data) async {
    try {
      isLoading.value = true;
      final result = await registerUsecase.call(data);
      showAppUiDialog(
        context: Get.context!,
        title: "Registrasi Berhasil",
        variant: AppDialogVariant.success,
        message:
            "Akun berhasil dibuat dengan rincian berikut:\n\n"
            "Nama: ${result.name}\n"
            "Email: ${result.email}",
        confirmLabel: "Oke",
        onConfirm: () => Get.back(),
        showCancel: false,
      );
    } catch (e) {
      showAppUiDialog(
        context: Get.context!,
        title: "Gagal Mendaftar",
        variant: AppDialogVariant.warning,
        message: e.toString().replaceAll("Exception: ", ""),
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> login(AuthEntity data, bool isSave) async {
    try {
      isLoading.value = true;
      final result = await loginUsecase.call(data);

      user.value = result;
      if (isSave && user.value?.token != null) {
        await _prefs.setString(AppConstants.tokenKey, user.value?.token ?? '');
      }
      _redirect(user.value?.user?.roleCode ?? '');
    } catch (e) {
      showAppUiDialog(
        context: Get.context!,
        title: "Gagal Login",
        variant: AppDialogVariant.warning,
        message: e.toString().replaceAll("Exception: ", ""),
      );
    } finally {
      isLoading.value = false;
    }
  }

  void _redirect(String? role) {
    if (role == 'muzzaki') {
      Get.offAllNamed(RouteName.muzzaki);
    } else if (role == 'amil_surveyor') {
      Get.offAllNamed(RouteName.guest);
    } else if (role == 'amil_penghimpun') {
      Get.offAllNamed(RouteName.guest);
    } else {
      Get.offAllNamed(RouteName.guest);
    }
  }
}
