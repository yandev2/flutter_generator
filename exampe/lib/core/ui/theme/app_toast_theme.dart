import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

enum AppToastVariant { feature, success, info, warning, danger }

class AppToastAccent {
  const AppToastAccent({
    required this.accent,
    required this.background,
    required this.icon,
    required this.iconForeground,
  });

  final Color accent;
  final Color background;
  final HeroIcons icon;
  final Color iconForeground;

  static AppToastAccent of(BuildContext context, AppToastVariant variant) {
    final feature = UiThemeHelpers.featureAccent(context);
    return switch (variant) {
      AppToastVariant.feature => AppToastAccent(
        accent: feature,
        background: UiThemeHelpers.tintedBackground(context, feature),
        icon: HeroIcons.sparkles,
        iconForeground: Colors.white,
      ),
      AppToastVariant.success => AppToastAccent(
        accent: AppColors.primary,
        background: AppColors.primary.withValues(alpha: 0.1),
        icon: HeroIcons.check,
        iconForeground: Colors.white,
      ),
      AppToastVariant.info => AppToastAccent(
        accent: AppColors.textMuted,
        background: AppColors.textMuted.withValues(alpha: 0.1),
        icon: HeroIcons.informationCircle,
        iconForeground: Colors.white,
      ),
      AppToastVariant.warning => AppToastAccent(
        accent: AppColors.warning,
        background: AppColors.warning.withValues(alpha: 0.12),
        icon: HeroIcons.exclamationTriangle,
        iconForeground: Colors.white,
      ),
      AppToastVariant.danger => AppToastAccent(
        accent: AppColors.red,
        background: AppColors.red.withValues(alpha: 0.1),
        icon: HeroIcons.exclamationCircle,
        iconForeground: Colors.white,
      ),
    };
  }
}

/// Token styling untuk [AppToast].
class AppToastTheme {
  const AppToastTheme({
    required this.borderRadius,
    required this.padding,
    required this.iconSize,
    required this.iconBadgeSize,
    required this.messageStyle,
    required this.actionStyle,
    required this.closeIconSize,
    required this.gap,
    required this.shadow,
  });

  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double iconSize;
  final double iconBadgeSize;
  final TextStyle messageStyle;
  final TextStyle actionStyle;
  final double closeIconSize;
  final double gap;
  final List<BoxShadow> shadow;

  static AppToastTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppToastTheme(
      borderRadius: size(12),
      padding: EdgeInsets.symmetric(horizontal: size(14), vertical: size(12)),
      iconSize: size(16),
      iconBadgeSize: size(32),
      messageStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
      ),
      actionStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
      ),
      closeIconSize: size(18),
      gap: size(10),
      shadow: UiThemeHelpers.elevationShadow(context, blur: 12, offsetY: 4),
    );
  }

  AppToastTheme copyWith({
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    double? iconSize,
    double? iconBadgeSize,
    TextStyle? messageStyle,
    TextStyle? actionStyle,
    double? closeIconSize,
    double? gap,
    List<BoxShadow>? shadow,
  }) {
    return AppToastTheme(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      iconSize: iconSize ?? this.iconSize,
      iconBadgeSize: iconBadgeSize ?? this.iconBadgeSize,
      messageStyle: messageStyle ?? this.messageStyle,
      actionStyle: actionStyle ?? this.actionStyle,
      closeIconSize: closeIconSize ?? this.closeIconSize,
      gap: gap ?? this.gap,
      shadow: shadow ?? this.shadow,
    );
  }
}
