import 'package:flutter/material.dart';
import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

class AppInputTheme {
  const AppInputTheme({
    required this.borderRadius,
    required this.borderWidth,
    required this.focusedBorderWidth,
    required this.focusShadow,
    required this.dividerColor,
    required this.contentPadding,
    required this.labelStyle,
    required this.helperStyle,
    required this.errorStyle,
    required this.hintStyle,
    required this.inputStyle,
    required this.defaultBorderColor,
    required this.focusedBorderColor,
    required this.errorBorderColor,
    required this.fillColor,
    required this.disabledOpacity,
  });

  final double borderRadius;
  final double borderWidth;
  final double focusedBorderWidth;
  final List<BoxShadow> focusShadow;
  final Color dividerColor;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle labelStyle;
  final TextStyle helperStyle;
  final TextStyle errorStyle;
  final TextStyle hintStyle;
  final TextStyle inputStyle;
  final Color defaultBorderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color fillColor;
  final double disabledOpacity;

  static AppInputTheme of(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primary = theme.primaryColor;

    return AppInputTheme(
      borderRadius: size(12),
      borderWidth: 1,
      focusedBorderWidth: 2,
      focusShadow: [
        BoxShadow(
          color: primary.withValues(alpha: 0.12),
          blurRadius: size(8),
          spreadRadius: 0,
          offset: Offset(0, size(2)),
        ),
      ],
      dividerColor: AppColors.textMuted.withValues(alpha: 0.3),
      contentPadding: EdgeInsets.symmetric(horizontal: size(12), vertical: size(10)),
      labelStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
      ),
      helperStyle: textTheme.labelMedium ?? const TextStyle(),
      errorStyle: (textTheme.labelMedium ?? const TextStyle()).copyWith(
        color: theme.colorScheme.error,
      ),
      hintStyle: textTheme.bodyMedium ?? const TextStyle(),
      inputStyle: textTheme.bodyLarge ?? const TextStyle(),
      defaultBorderColor: UiThemeHelpers.isDark(context)
          ? AppColors.text.withValues(alpha: 0.2)
          : AppColors.text.withValues(alpha: 0.15),
      focusedBorderColor: primary,
      errorBorderColor: theme.colorScheme.error,
      fillColor: AppColors.surface,
      disabledOpacity: 0.5,
    );
  }

  AppInputTheme copyWith({
    double? borderRadius,
    double? borderWidth,
    double? focusedBorderWidth,
    List<BoxShadow>? focusShadow,
    Color? dividerColor,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? labelStyle,
    TextStyle? helperStyle,
    TextStyle? errorStyle,
    TextStyle? hintStyle,
    TextStyle? inputStyle,
    Color? defaultBorderColor,
    Color? focusedBorderColor,
    Color? errorBorderColor,
    Color? fillColor,
    double? disabledOpacity,
  }) {
    return AppInputTheme(
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      focusedBorderWidth: focusedBorderWidth ?? this.focusedBorderWidth,
      focusShadow: focusShadow ?? this.focusShadow,
      dividerColor: dividerColor ?? this.dividerColor,
      contentPadding: contentPadding ?? this.contentPadding,
      labelStyle: labelStyle ?? this.labelStyle,
      helperStyle: helperStyle ?? this.helperStyle,
      errorStyle: errorStyle ?? this.errorStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      inputStyle: inputStyle ?? this.inputStyle,
      defaultBorderColor: defaultBorderColor ?? this.defaultBorderColor,
      focusedBorderColor: focusedBorderColor ?? this.focusedBorderColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      fillColor: fillColor ?? this.fillColor,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
    );
  }
}
