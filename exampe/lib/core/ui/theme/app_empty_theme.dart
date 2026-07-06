import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';

class AppEmptyTheme {
  const AppEmptyTheme({
    required this.padding,
    required this.gap,
    required this.illustrationHeight,
    required this.titleStyle,
    required this.messageStyle,
    required this.illustrationColor,
    required this.maxWidth,
  });

  final EdgeInsetsGeometry padding;
  final double gap;
  final double illustrationHeight;
  final TextStyle titleStyle;
  final TextStyle messageStyle;
  final Color illustrationColor;
  final double maxWidth;

  static AppEmptyTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppEmptyTheme(
      padding: EdgeInsets.symmetric(horizontal: size(24), vertical: size(32)),
      gap: size(12),
      illustrationHeight: size(100),
      titleStyle: (textTheme.titleMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      messageStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        color: AppColors.textMuted,
        height: 1.5,
      ),
      illustrationColor: AppColors.textMuted.withValues(alpha: 0.45),
      maxWidth: size(320),
    );
  }

  AppEmptyTheme copyWith({
    EdgeInsetsGeometry? padding,
    double? gap,
    double? illustrationHeight,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    Color? illustrationColor,
    double? maxWidth,
  }) {
    return AppEmptyTheme(
      padding: padding ?? this.padding,
      gap: gap ?? this.gap,
      illustrationHeight: illustrationHeight ?? this.illustrationHeight,
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      illustrationColor: illustrationColor ?? this.illustrationColor,
      maxWidth: maxWidth ?? this.maxWidth,
    );
  }
}
