import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../button/app_button.dart';
import '../theme/app_button_theme.dart';
import '../theme/app_dialog_theme.dart';

/// Dialog scalable — custom title, message, ikon, content, dan aksi.
class AppUiDialog extends StatelessWidget {
  const AppUiDialog({
    super.key,
    this.title,
    this.message,
    this.content,
    this.imageUrl,
    this.variant = AppDialogVariant.info,
    this.icon,
    this.accentColor,
    this.iconBackgroundColor,
    this.showIcon = true,
    this.showCloseButton = true,
    this.onClose,
    this.cancelLabel = 'Cancel',
    this.confirmLabel = 'Accept',
    this.onCancel,
    this.onConfirm,
    this.showCancel = true,
    this.showConfirm = true,
    this.isLoading = false,
    this.style,
    this.confirmBackgroundColor,
    this.confirmForegroundColor,
    this.width,
  });

  final String? title;
  final String? message;
  final Widget? content;
  final String? imageUrl;
  final AppDialogVariant variant;
  final HeroIcons? icon;
  final Color? accentColor;
  final Color? iconBackgroundColor;
  final bool showIcon;
  final bool showCloseButton;
  final VoidCallback? onClose;
  final String cancelLabel;
  final String confirmLabel;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final bool showCancel;
  final bool showConfirm;
  final bool isLoading;
  final AppDialogTheme? style;
  final Color? confirmBackgroundColor;
  final Color? confirmForegroundColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppDialogTheme.of(context);
    final preset = AppDialogAccent.of(context, variant);
    final accent = accentColor ?? preset.accent;
    final iconBg = iconBackgroundColor ?? preset.iconBackground;
    final resolvedIcon = icon ?? preset.icon;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final dialogWidth =
        width ?? (screenWidth * theme.widthFactor).clamp(0.0, theme.maxWidth).toDouble();

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(horizontal: size(16)),
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(theme.borderRadius),
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: dialogWidth,
          padding: theme.padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(theme.borderRadius),
            boxShadow: theme.shadow,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TopBar(
                theme: theme,
                showIcon: showIcon,
                showCloseButton: showCloseButton,
                icon: resolvedIcon,
                accent: accent,
                iconBg: iconBg,
                onClose: () {
                  onClose?.call();
                  Navigator.of(context).maybePop();
                },
              ),
              if (imageUrl != null) ...[
                if (showIcon || showCloseButton) SizedBox(height: theme.sectionGap),
                ClipRRect(
                  borderRadius: BorderRadius.circular(size(12)),
                  child: Image.network(
                    imageUrl!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              if (title != null) ...[
                SizedBox(height: theme.sectionGap),
                Text(title!, style: theme.titleStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
              if (message != null) ...[
                SizedBox(height: size(8)),
                Text(
                  message!,
                  style: theme.messageStyle,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (content != null) ...[SizedBox(height: theme.sectionGap), content!],
              if (showCancel || showConfirm) ...[
                SizedBox(height: theme.sectionGap),
                _Actions(
                  theme: theme,
                  accent: accent,
                  cancelLabel: cancelLabel,
                  confirmLabel: confirmLabel,
                  onCancel: onCancel,
                  onConfirm: onConfirm,
                  showCancel: showCancel,
                  showConfirm: showConfirm,
                  isLoading: isLoading,
                  confirmBackgroundColor: confirmBackgroundColor,
                  confirmForegroundColor: confirmForegroundColor,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.theme,
    required this.showIcon,
    required this.showCloseButton,
    required this.icon,
    required this.accent,
    required this.iconBg,
    required this.onClose,
  });

  final AppDialogTheme theme;
  final bool showIcon;
  final bool showCloseButton;
  final HeroIcons icon;
  final Color accent;
  final Color iconBg;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showIcon)
          Container(
            width: theme.iconBadgeSize,
            height: theme.iconBadgeSize,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(theme.iconBadgeRadius),
            ),
            child: Center(
              child: HeroIcon(icon, color: accent, size: theme.iconSize),
            ),
          ),
        const Spacer(),
        if (showCloseButton) _CloseButton(iconSize: theme.closeIconSize, onPressed: onClose),
      ],
    );
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

class _Actions extends StatelessWidget {
  const _Actions({
    required this.theme,
    required this.accent,
    required this.cancelLabel,
    required this.confirmLabel,
    required this.onCancel,
    required this.onConfirm,
    required this.showCancel,
    required this.showConfirm,
    required this.isLoading,
    required this.confirmBackgroundColor,
    required this.confirmForegroundColor,
  });

  final AppDialogTheme theme;
  final Color accent;
  final String cancelLabel;
  final String confirmLabel;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final bool showCancel;
  final bool showConfirm;
  final bool isLoading;
  final Color? confirmBackgroundColor;
  final Color? confirmForegroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showCancel)
          Expanded(
            child: AppButton(
              label: cancelLabel,
              variant: AppButtonVariant.secondary,
              expand: true,
              onPressed: isLoading
                  ? null
                  : () {
                      Navigator.of(context).maybePop();
                      onCancel?.call();
                    },
            ),
          ),
        if (showCancel && showConfirm) SizedBox(width: theme.actionsGap),
        if (showConfirm)
          Expanded(
            child: AppButton(
              label: confirmLabel,
              variant: AppButtonVariant.primary,
              expand: true,
              isLoading: isLoading,
              backgroundColor: confirmBackgroundColor ?? accent,
              foregroundColor: confirmForegroundColor ?? Colors.white,
              onPressed: isLoading ? null : onConfirm,
            ),
          ),
      ],
    );
  }
}

/// Tampilkan [AppUiDialog] via [showDialog].

Future<T?> showAppUiDialog<T>({
  required BuildContext context,
  String? title,
  String? message,
  Widget? content,
  String? imageUrl,
  AppDialogVariant variant = AppDialogVariant.info,
  HeroIcons? icon,
  Color? accentColor,
  Color? iconBackgroundColor,
  bool showIcon = true,
  bool showCloseButton = true,
  VoidCallback? onClose,
  String cancelLabel = 'Cancel',
  String confirmLabel = 'Accept',
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
  bool showCancel = true,
  bool showConfirm = true,
  bool isLoading = false,
  bool barrierDismissible = false,
  AppDialogTheme? style,
  Color? confirmBackgroundColor,
  Color? confirmForegroundColor,
  double? width,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (dialogContext) => AppUiDialog(
      title: title,
      message: message,
      content: content,
      imageUrl: imageUrl,
      variant: variant,
      icon: icon,
      accentColor: accentColor,
      iconBackgroundColor: iconBackgroundColor,
      showIcon: showIcon,
      showCloseButton: showCloseButton,
      onClose: onClose,
      cancelLabel: cancelLabel,
      confirmLabel: confirmLabel,
      onCancel: onCancel,
      onConfirm: onConfirm,
      showCancel: showCancel,
      showConfirm: showConfirm,
      isLoading: isLoading,
      style: style,
      confirmBackgroundColor: confirmBackgroundColor,
      confirmForegroundColor: confirmForegroundColor,
      width: width,
    ),
  );
}
