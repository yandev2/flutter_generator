import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

/// Preset tampilan checkbox.
enum AppCheckboxVariant {
  /// Checkbox + teks inline — ringan untuk form.
  plain,

  /// Seluruh baris dalam kartu — cocok untuk consent / opsi premium.
  card,
}

/// Posisi kotak centang relatif terhadap teks.
enum AppCheckboxControlPosition { start, end }

/// Token styling terpusat untuk [AppCheckbox].
class AppCheckboxTheme {
  const AppCheckboxTheme({
    required this.boxSize,
    required this.borderRadius,
    required this.borderWidth,
    required this.gap,
    required this.titleDescGap,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.errorStyle,
    required this.uncheckedBorderColor,
    required this.uncheckedFillColor,
    required this.checkedColor,
    required this.checkMarkColor,
    required this.disabledOpacity,
    required this.checkIconSize,
    required this.animationDuration,
    required this.cardPadding,
    required this.cardBorderRadius,
    required this.cardBorderColor,
    required this.cardSelectedBorderColor,
    required this.cardSelectedBackgroundColor,
    required this.cardShadow,
  });

  final double boxSize;
  final double borderRadius;
  final double borderWidth;
  final double gap;
  final double titleDescGap;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  final TextStyle errorStyle;
  final Color uncheckedBorderColor;
  final Color uncheckedFillColor;
  final Color checkedColor;
  final Color checkMarkColor;
  final double disabledOpacity;
  final double checkIconSize;
  final Duration animationDuration;
  final EdgeInsetsGeometry cardPadding;
  final double cardBorderRadius;
  final Color cardBorderColor;
  final Color cardSelectedBorderColor;
  final Color cardSelectedBackgroundColor;
  final List<BoxShadow> cardShadow;

  static AppCheckboxTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).primaryColor;

    return AppCheckboxTheme(
      boxSize: size(22),
      borderRadius: size(7),
      borderWidth: 1.5,
      gap: size(12),
      titleDescGap: size(3),
      titleStyle: (textTheme.bodyLarge ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
        height: 1.3,
      ),
      descriptionStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
        color: AppColors.textMuted,
        height: 1.45,
      ),
      errorStyle: (textTheme.labelSmall ?? const TextStyle()).copyWith(
        color: Theme.of(context).colorScheme.error,
      ),
      uncheckedBorderColor: UiThemeHelpers.subtleBorder(context),
      uncheckedFillColor: AppColors.surface,
      checkedColor: primary,
      checkMarkColor: Colors.white,
      disabledOpacity: 0.45,
      checkIconSize: size(14),
      animationDuration: const Duration(milliseconds: 180),
      cardPadding: EdgeInsets.symmetric(
        horizontal: size(14),
        vertical: size(12),
      ),
      cardBorderRadius: size(14),
      cardBorderColor: UiThemeHelpers.subtleBorder(context),
      cardSelectedBorderColor: primary.withValues(alpha: 0.55),
      cardSelectedBackgroundColor: primary.withValues(alpha: 0.07),
      cardShadow: UiThemeHelpers.elevationShadow(context, blur: 10, offsetY: 2),
    );
  }

  AppCheckboxTheme copyWith({
    double? boxSize,
    double? borderRadius,
    double? borderWidth,
    double? gap,
    double? titleDescGap,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    TextStyle? errorStyle,
    Color? uncheckedBorderColor,
    Color? uncheckedFillColor,
    Color? checkedColor,
    Color? checkMarkColor,
    double? disabledOpacity,
    double? checkIconSize,
    Duration? animationDuration,
    EdgeInsetsGeometry? cardPadding,
    double? cardBorderRadius,
    Color? cardBorderColor,
    Color? cardSelectedBorderColor,
    Color? cardSelectedBackgroundColor,
    List<BoxShadow>? cardShadow,
  }) {
    return AppCheckboxTheme(
      boxSize: boxSize ?? this.boxSize,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      gap: gap ?? this.gap,
      titleDescGap: titleDescGap ?? this.titleDescGap,
      titleStyle: titleStyle ?? this.titleStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      errorStyle: errorStyle ?? this.errorStyle,
      uncheckedBorderColor: uncheckedBorderColor ?? this.uncheckedBorderColor,
      uncheckedFillColor: uncheckedFillColor ?? this.uncheckedFillColor,
      checkedColor: checkedColor ?? this.checkedColor,
      checkMarkColor: checkMarkColor ?? this.checkMarkColor,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      checkIconSize: checkIconSize ?? this.checkIconSize,
      animationDuration: animationDuration ?? this.animationDuration,
      cardPadding: cardPadding ?? this.cardPadding,
      cardBorderRadius: cardBorderRadius ?? this.cardBorderRadius,
      cardBorderColor: cardBorderColor ?? this.cardBorderColor,
      cardSelectedBorderColor:
          cardSelectedBorderColor ?? this.cardSelectedBorderColor,
      cardSelectedBackgroundColor:
          cardSelectedBackgroundColor ?? this.cardSelectedBackgroundColor,
      cardShadow: cardShadow ?? this.cardShadow,
    );
  }
}
