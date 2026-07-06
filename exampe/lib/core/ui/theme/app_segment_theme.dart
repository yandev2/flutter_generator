import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

/// Token styling untuk [AppSegmentControl].
class AppSegmentTheme {
  const AppSegmentTheme({
    required this.trackPadding,
    required this.trackRadius,
    required this.segmentRadius,
    required this.segmentPadding,
    required this.labelStyle,
    required this.selectedLabelStyle,
    required this.trackColor,
    required this.selectedColor,
    this.unselectedColor,
    required this.selectedForeground,
    required this.unselectedForeground,
    required this.borderColor,
    this.unselectedBorderColor,
    required this.animationDuration,
    required this.iconGap,
    required this.iconSize,
  });

  final double trackPadding;
  final double trackRadius;
  final double segmentRadius;
  final EdgeInsetsGeometry segmentPadding;
  final TextStyle labelStyle;
  final TextStyle selectedLabelStyle;
  final Color trackColor;
  final Color selectedColor;
  final Color? unselectedColor;
  final Color selectedForeground;
  final Color unselectedForeground;
  final Color borderColor;
  final Color? unselectedBorderColor;
  final Duration animationDuration;
  final double iconGap;
  final double iconSize;

  static AppSegmentTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).primaryColor;

    return AppSegmentTheme(
      trackPadding: size(4),
      trackRadius: size(12),
      segmentRadius: size(10),
      segmentPadding: EdgeInsets.symmetric(
        vertical: size(10),
        horizontal: size(8),
      ),
      labelStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.text,
      ),
      selectedLabelStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.onPrimary,
      ),
      trackColor: AppColors.surfaceElevated2,
      selectedColor: primary,
      unselectedColor: Colors.transparent,
      selectedForeground: AppColors.onPrimary,
      unselectedForeground: AppColors.text,
      borderColor: UiThemeHelpers.subtleBorder(context),
      unselectedBorderColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 220),
      iconGap: size(6),
      iconSize: size(16),
    );
  }

  AppSegmentTheme copyWith({
    double? trackPadding,
    double? trackRadius,
    double? segmentRadius,
    EdgeInsetsGeometry? segmentPadding,
    TextStyle? labelStyle,
    TextStyle? selectedLabelStyle,
    Color? trackColor,
    Color? selectedColor,
    Color? unselectedColor,
    Color? selectedForeground,
    Color? unselectedForeground,
    Color? borderColor,
    Color? unselectedBorderColor,
    Duration? animationDuration,
    double? iconGap,
    double? iconSize,
  }) {
    return AppSegmentTheme(
      trackPadding: trackPadding ?? this.trackPadding,
      trackRadius: trackRadius ?? this.trackRadius,
      segmentRadius: segmentRadius ?? this.segmentRadius,
      segmentPadding: segmentPadding ?? this.segmentPadding,
      labelStyle: labelStyle ?? this.labelStyle,
      selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
      trackColor: trackColor ?? this.trackColor,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
      selectedForeground: selectedForeground ?? this.selectedForeground,
      unselectedForeground: unselectedForeground ?? this.unselectedForeground,
      borderColor: borderColor ?? this.borderColor,
      unselectedBorderColor:
          unselectedBorderColor ?? this.unselectedBorderColor,
      animationDuration: animationDuration ?? this.animationDuration,
      iconGap: iconGap ?? this.iconGap,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}
