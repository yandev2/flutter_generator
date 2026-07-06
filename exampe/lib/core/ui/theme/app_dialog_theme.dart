import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

enum AppDialogVariant { primary, success, danger, warning, info }

/// Warna aksen + ikon per variant dialog.
class AppDialogAccent {
  const AppDialogAccent({required this.accent, required this.iconBackground, required this.icon});

  final Color accent;
  final Color iconBackground;
  final HeroIcons icon;

  static AppDialogAccent of(BuildContext context, AppDialogVariant variant) {
    final primary = Theme.of(context).primaryColor;

    return switch (variant) {
      AppDialogVariant.primary => AppDialogAccent(
        accent: primary,
        iconBackground: primary.withValues(alpha: 0.12),
        icon: HeroIcons.checkCircle,
      ),
      AppDialogVariant.success => AppDialogAccent(
        accent: AppColors.primary,
        iconBackground: AppColors.primary.withValues(alpha: 0.12),
        icon: HeroIcons.checkCircle,
      ),
      AppDialogVariant.danger => AppDialogAccent(
        accent: AppColors.red,
        iconBackground: AppColors.red.withValues(alpha: 0.12),
        icon: HeroIcons.exclamationCircle,
      ),
      AppDialogVariant.warning => AppDialogAccent(
        accent: AppColors.amber,
        iconBackground: AppColors.amber.withValues(alpha: 0.12),
        icon: HeroIcons.exclamationTriangle,
      ),
      AppDialogVariant.info => AppDialogAccent(
        accent: AppColors.blue,
        iconBackground: AppColors.blue.withValues(alpha: 0.12),
        icon: HeroIcons.informationCircle,
      ),
    };
  }
}

/// Token styling terpusat untuk [AppUiDialog].
class AppDialogTheme {
  const AppDialogTheme({
    required this.borderRadius,
    required this.padding,
    required this.widthFactor,
    required this.maxWidth,
    required this.titleStyle,
    required this.messageStyle,
    required this.iconSize,
    required this.iconBadgeSize,
    required this.iconBadgeRadius,
    required this.closeIconSize,
    required this.sectionGap,
    required this.actionsGap,
    required this.shadow,
  });

  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double widthFactor;
  final double maxWidth;
  final TextStyle titleStyle;
  final TextStyle messageStyle;
  final double iconSize;
  final double iconBadgeSize;
  final double iconBadgeRadius;
  final double closeIconSize;
  final double sectionGap;
  final double actionsGap;
  final List<BoxShadow> shadow;

  static AppDialogTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppDialogTheme(
      borderRadius: size(24),
      padding: EdgeInsets.all(size(20)),
      widthFactor: 0.88,
      maxWidth: size(400),
      titleStyle: (textTheme.titleMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      messageStyle: textTheme.bodyMedium ?? const TextStyle(),
      iconSize: size(22),
      iconBadgeSize: size(40),
      iconBadgeRadius: size(20),
      closeIconSize: size(20),
      sectionGap: size(16),
      actionsGap: size(10),
      shadow: UiThemeHelpers.elevationShadow(context, blur: 24, offsetY: 8, lightOpacity: 0.12),
    );
  }

  AppDialogTheme copyWith({
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    double? widthFactor,
    double? maxWidth,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    double? iconSize,
    double? iconBadgeSize,
    double? iconBadgeRadius,
    double? closeIconSize,
    double? sectionGap,
    double? actionsGap,
    List<BoxShadow>? shadow,
  }) {
    return AppDialogTheme(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      widthFactor: widthFactor ?? this.widthFactor,
      maxWidth: maxWidth ?? this.maxWidth,
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      iconSize: iconSize ?? this.iconSize,
      iconBadgeSize: iconBadgeSize ?? this.iconBadgeSize,
      iconBadgeRadius: iconBadgeRadius ?? this.iconBadgeRadius,
      closeIconSize: closeIconSize ?? this.closeIconSize,
      sectionGap: sectionGap ?? this.sectionGap,
      actionsGap: actionsGap ?? this.actionsGap,
      shadow: shadow ?? this.shadow,
    );
  }
}
