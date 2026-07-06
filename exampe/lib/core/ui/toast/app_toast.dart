import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../theme/app_toast_theme.dart';

/// Toast notification — ikon status, pesan, aksi opsional, tombol tutup.
class AppToast extends StatelessWidget {
  const AppToast({
    super.key,
    required this.message,
    this.variant = AppToastVariant.info,
    this.icon,
    this.accentColor,
    this.backgroundColor,
    this.actionLabel,
    this.onAction,
    this.onClose,
    this.showCloseButton = true,
    this.style,
  });

  final String message;
  final AppToastVariant variant;
  final HeroIcons? icon;
  final Color? accentColor;
  final Color? backgroundColor;
  final String? actionLabel;
  final VoidCallback? onAction;
  final VoidCallback? onClose;
  final bool showCloseButton;
  final AppToastTheme? style;

  bool get _hasAction => actionLabel != null && actionLabel!.isNotEmpty && onAction != null;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppToastTheme.of(context);
    final preset = AppToastAccent.of(context, variant);
    final accent = accentColor ?? preset.accent;
    final bg = backgroundColor ?? preset.background;
    final resolvedIcon = icon ?? preset.icon;

    return Material(
      color: Colors.transparent,
      child: Container(
        padding: theme.padding,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(theme.borderRadius),
          boxShadow: theme.shadow,
        ),
        child: Row(
          children: [
            Container(
              width: theme.iconBadgeSize,
              height: theme.iconBadgeSize,
              decoration: BoxDecoration(color: accent, shape: BoxShape.circle),
              child: Center(
                child: HeroIcon(resolvedIcon, size: theme.iconSize, color: preset.iconForeground),
              ),
            ),
            SizedBox(width: theme.gap),
            Expanded(
              child: Text(
                message,
                style: theme.messageStyle,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (_hasAction) ...[
              SizedBox(width: theme.gap),
              Flexible(
                fit: FlexFit.loose,
                child: GestureDetector(
                  onTap: onAction,
                  child: Text(
                    actionLabel!,
                    style: theme.actionStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
            if (showCloseButton) ...[
              SizedBox(width: size(6)),
              _CloseButton(
                iconSize: theme.closeIconSize,
                onPressed: onClose ?? () => _dismiss(context),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _dismiss(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({required this.iconSize, required this.onPressed});

  final double iconSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(size(20)),
        child: Padding(
          padding: EdgeInsets.all(size(4)),
          child: HeroIcon(HeroIcons.xMark, size: iconSize, color: AppColors.textMuted),
        ),
      ),
    );
  }
}

/// Tampilkan [AppToast] sebagai floating snackbar.
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showAppToast(
  BuildContext context, {
  required String message,
  AppToastVariant variant = AppToastVariant.info,
  HeroIcons? icon,
  Color? accentColor,
  Color? backgroundColor,
  String? actionLabel,
  VoidCallback? onAction,
  VoidCallback? onClose,
  bool showCloseButton = true,
  Duration duration = const Duration(seconds: 4),
  AppToastTheme? style,
  EdgeInsetsGeometry? margin,
}) {
  final messenger = ScaffoldMessenger.of(context);

  void handleClose() {
    messenger.hideCurrentSnackBar();
    onClose?.call();
  }

  void handleAction() {
    onAction?.call();
    messenger.hideCurrentSnackBar();
  }

  return messenger.showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      margin: margin ?? EdgeInsets.all(size(16)),
      padding: EdgeInsets.zero,
      duration: duration,
      content: AppToast(
        message: message,
        variant: variant,
        icon: icon,
        accentColor: accentColor,
        backgroundColor: backgroundColor,
        actionLabel: actionLabel,
        onAction: onAction != null ? handleAction : null,
        onClose: handleClose,
        showCloseButton: showCloseButton,
        style: style,
      ),
    ),
  );
}
