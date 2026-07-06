import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';

enum AppSwitchControlPosition { start, end }

class AppSwitchTheme {
  const AppSwitchTheme({
    required this.trackWidth,
    required this.trackHeight,
    required this.thumbSize,
    required this.trackPadding,
    required this.gap,
    required this.titleDescGap,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.errorStyle,
    required this.activeColor,
    required this.inactiveTrackColor,
    required this.inactiveThumbColor,
    required this.disabledOpacity,
    required this.animationDuration,
  });

  final double trackWidth;
  final double trackHeight;
  final double thumbSize;
  final double trackPadding;
  final double gap;
  final double titleDescGap;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  final TextStyle errorStyle;
  final Color activeColor;
  final Color inactiveTrackColor;
  final Color inactiveThumbColor;
  final double disabledOpacity;
  final Duration animationDuration;

  static AppSwitchTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).primaryColor;

    return AppSwitchTheme(
      trackWidth: size(48),
      trackHeight: size(28),
      thumbSize: size(22),
      trackPadding: size(3),
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
      activeColor: primary,
      inactiveTrackColor: AppColors.textMuted.withValues(alpha: 0.25),
      inactiveThumbColor: AppColors.surface,
      disabledOpacity: 0.45,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  AppSwitchTheme copyWith({
    double? trackWidth,
    double? trackHeight,
    double? thumbSize,
    double? trackPadding,
    double? gap,
    double? titleDescGap,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    TextStyle? errorStyle,
    Color? activeColor,
    Color? inactiveTrackColor,
    Color? inactiveThumbColor,
    double? disabledOpacity,
    Duration? animationDuration,
  }) {
    return AppSwitchTheme(
      trackWidth: trackWidth ?? this.trackWidth,
      trackHeight: trackHeight ?? this.trackHeight,
      thumbSize: thumbSize ?? this.thumbSize,
      trackPadding: trackPadding ?? this.trackPadding,
      gap: gap ?? this.gap,
      titleDescGap: titleDescGap ?? this.titleDescGap,
      titleStyle: titleStyle ?? this.titleStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      errorStyle: errorStyle ?? this.errorStyle,
      activeColor: activeColor ?? this.activeColor,
      inactiveTrackColor: inactiveTrackColor ?? this.inactiveTrackColor,
      inactiveThumbColor: inactiveThumbColor ?? this.inactiveThumbColor,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }
}
