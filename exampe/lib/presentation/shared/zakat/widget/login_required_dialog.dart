import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/dialog/app_ui_dialog.dart';
import '../../../../core/ui/theme/app_dialog_theme.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';

enum LoginDialogResult { cancelled, login, register }

Future<LoginDialogResult> showGuestLoginRequiredDialog({
  required String message,
}) async {
  final ctx = Get.context;
  if (ctx == null) return LoginDialogResult.cancelled;

  final result = await showAppUiDialog<LoginDialogResult>(
    context: ctx,
    variant: AppDialogVariant.success,
    title: 'Login Diperlukan',
    message: message,
    showCancel: true,
    cancelLabel: 'Batal',
    confirmLabel: 'Masuk',
    confirmBackgroundColor: Get.theme.primaryColor,
    onConfirm: () => Navigator.of(ctx).pop(LoginDialogResult.login),
    content: Builder(
      builder: (dialogCtx) => Padding(
        padding: EdgeInsets.only(top: size(12)),
        child: AppButton.secondary(
          label: 'Daftar',
          onPressed: () =>
              Navigator.of(dialogCtx).pop(LoginDialogResult.register),
        ),
      ),
    ),
  );

  final resolved = result ?? LoginDialogResult.cancelled;

  switch (resolved) {
    case LoginDialogResult.login:
      Get.toNamed(RouteName.login);
    case LoginDialogResult.register:
      Get.toNamed(RouteName.register);
    case LoginDialogResult.cancelled:
      break;
  }

  return resolved;
}
