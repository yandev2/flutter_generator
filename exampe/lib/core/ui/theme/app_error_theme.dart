import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

class AppErrorTheme {
  const AppErrorTheme({
    required this.cardBorderRadius,
    required this.cardPadding,
    required this.screenPadding,
    required this.gap,
    required this.illustrationHeight,
    required this.titleStyle,
    required this.messageStyle,
    required this.cardShadow,
    required this.screenBackgroundColor,
    required this.cardColor,
    required this.illustrationColor,
  });

  final double cardBorderRadius;
  final EdgeInsetsGeometry cardPadding;
  final EdgeInsetsGeometry screenPadding;
  final double gap;
  final double illustrationHeight;
  final TextStyle titleStyle;
  final TextStyle messageStyle;
  final List<BoxShadow> cardShadow;
  final Color screenBackgroundColor;
  final Color cardColor;
  final Color illustrationColor;

  static AppErrorTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).primaryColor;

    return AppErrorTheme(
      cardBorderRadius: size(24),
      cardPadding: EdgeInsets.symmetric(horizontal: size(28), vertical: size(32)),
      screenPadding: EdgeInsets.all(size(24)),
      gap: size(16),
      illustrationHeight: size(120),
      titleStyle: (textTheme.titleLarge ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      messageStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        color: AppColors.textMuted,
        height: 1.5,
      ),
      cardShadow: UiThemeHelpers.elevationShadow(context, blur: 24, offsetY: 8, lightOpacity: 0.12),
      screenBackgroundColor: primary,
      cardColor: AppColors.surface,
      illustrationColor: AppColors.blue,
    );
  }

  AppErrorTheme copyWith({
    double? cardBorderRadius,
    EdgeInsetsGeometry? cardPadding,
    EdgeInsetsGeometry? screenPadding,
    double? gap,
    double? illustrationHeight,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    List<BoxShadow>? cardShadow,
    Color? screenBackgroundColor,
    Color? cardColor,
    Color? illustrationColor,
  }) {
    return AppErrorTheme(
      cardBorderRadius: cardBorderRadius ?? this.cardBorderRadius,
      cardPadding: cardPadding ?? this.cardPadding,
      screenPadding: screenPadding ?? this.screenPadding,
      gap: gap ?? this.gap,
      illustrationHeight: illustrationHeight ?? this.illustrationHeight,
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      cardShadow: cardShadow ?? this.cardShadow,
      screenBackgroundColor: screenBackgroundColor ?? this.screenBackgroundColor,
      cardColor: cardColor ?? this.cardColor,
      illustrationColor: illustrationColor ?? this.illustrationColor,
    );
  }
}
