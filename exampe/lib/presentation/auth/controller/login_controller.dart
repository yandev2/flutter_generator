import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/ui/dialog/app_ui_dialog.dart';
import '../../../core/ui/theme/app_dialog_theme.dart';
import '../../../domain/entity/request/auth_entity.dart';
import '../../../service/auth/auth_service.dart';

class LoginController extends GetxController {
  final isSaveLogin = false.obs;
  final identifierController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = Get.find<AuthService>();

  Future<void> login() async {
    final identifier = identifierController.text.trim();
    final password = passwordController.text;
    if (identifier.isEmpty || password.isEmpty) {
      showAppUiDialog(
        context: Get.context!,
        title: "Validasi",
        variant: AppDialogVariant.danger,
        message: 'Email/Nomor WhatsApp dan Password tidak boleh kosong',
      );
      return;
    }
    final data = AuthEntity(
      identifier: identifier,
      password: password,
      fcmToken: "dsd",
    );

    await authService.login(data, isSaveLogin.value);
  }
}
