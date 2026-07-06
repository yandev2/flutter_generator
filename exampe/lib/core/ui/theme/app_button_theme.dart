import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

/// Preset gaya tombol.
enum AppButtonVariant { primary, secondary, outline, ghost, danger }

/// Token styling terpusat untuk [AppButton].
class AppButtonTheme {
  const AppButtonTheme({
    required this.borderRadius,
    required this.minHeight,
    required this.padding,
    required this.iconSize,
    required this.iconGap,
    required this.labelStyle,
    required this.loadingIndicatorSize,
    required this.disabledOpacity,
    required this.primaryColors,
    required this.secondaryColors,
    required this.outlineColors,
    required this.ghostColors,
    required this.dangerColors,
  });

  final double borderRadius;
  final double minHeight;
  final EdgeInsetsGeometry padding;
  final double iconSize;
  final double iconGap;
  final TextStyle labelStyle;
  final double loadingIndicatorSize;
  final double disabledOpacity;

  final AppButtonColors primaryColors;
  final AppButtonColors secondaryColors;
  final AppButtonColors outlineColors;
  final AppButtonColors ghostColors;
  final AppButtonColors dangerColors;

  static AppButtonTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).primaryColor;
    final error = Theme.of(context).colorScheme.error;

    return AppButtonTheme(
      borderRadius: size(22),
      minHeight: size(44),
      padding: EdgeInsets.symmetric(horizontal: size(20), vertical: size(10)),
      iconSize: size(18),
      iconGap: size(8),
      labelStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(fontWeight: FontWeight.w600),
      loadingIndicatorSize: size(18),
      disabledOpacity: 0.5,
      primaryColors: AppButtonColors(
        background: primary,
        foreground: Colors.white,
        border: Colors.transparent,
        shadow: [
          BoxShadow(
            color: primary.withValues(alpha: 0.35),
            blurRadius: size(10),
            offset: Offset(0, size(4)),
          ),
        ],
      ),
      secondaryColors: AppButtonColors(
        background: AppColors.surface,
        foreground: AppColors.text,
        border: UiThemeHelpers.subtleBorder(context),
        shadow: UiThemeHelpers.elevationShadow(context, blur: 8, offsetY: 2),
      ),
      outlineColors: AppButtonColors(
        background: Colors.transparent,
        foreground: primary,
        border: primary.withValues(alpha: 0.4),
        shadow: const [],
      ),
      ghostColors: AppButtonColors(
        background: Colors.transparent,
        foreground: AppColors.text,
        border: Colors.transparent,
        shadow: const [],
      ),
      dangerColors: AppButtonColors(
        background: error,
        foreground: Colors.white,
        border: Colors.transparent,
        shadow: [
          BoxShadow(
            color: error.withValues(alpha: 0.3),
            blurRadius: size(10),
            offset: Offset(0, size(4)),
          ),
        ],
      ),
    );
  }

  AppButtonColors colorsFor(AppButtonVariant variant) {
    return switch (variant) {
      AppButtonVariant.primary => primaryColors,
      AppButtonVariant.secondary => secondaryColors,
      AppButtonVariant.outline => outlineColors,
      AppButtonVariant.ghost => ghostColors,
      AppButtonVariant.danger => dangerColors,
    };
  }

  AppButtonTheme copyWith({
    double? borderRadius,
    double? minHeight,
    EdgeInsetsGeometry? padding,
    double? iconSize,
    double? iconGap,
    TextStyle? labelStyle,
    double? loadingIndicatorSize,
    double? disabledOpacity,
    AppButtonColors? primaryColors,
    AppButtonColors? secondaryColors,
    AppButtonColors? outlineColors,
    AppButtonColors? ghostColors,
    AppButtonColors? dangerColors,
  }) {
    return AppButtonTheme(
      borderRadius: borderRadius ?? this.borderRadius,
      minHeight: minHeight ?? this.minHeight,
      padding: padding ?? this.padding,
      iconSize: iconSize ?? this.iconSize,
      iconGap: iconGap ?? this.iconGap,
      labelStyle: labelStyle ?? this.labelStyle,
      loadingIndicatorSize: loadingIndicatorSize ?? this.loadingIndicatorSize,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      primaryColors: primaryColors ?? this.primaryColors,
      secondaryColors: secondaryColors ?? this.secondaryColors,
      outlineColors: outlineColors ?? this.outlineColors,
      ghostColors: ghostColors ?? this.ghostColors,
      dangerColors: dangerColors ?? this.dangerColors,
    );
  }
}

/// Warna dan shadow per state tombol.
class AppButtonColors {
  const AppButtonColors({
    required this.background,
    required this.foreground,
    required this.border,
    required this.shadow,
  });

  final Color background;
  final Color foreground;
  final Color border;
  final List<BoxShadow> shadow;

  AppButtonColors copyWith({
    Color? background,
    Color? foreground,
    Color? border,
    List<BoxShadow>? shadow,
  }) {
    return AppButtonColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      border: border ?? this.border,
      shadow: shadow ?? this.shadow,
    );
  }
}
