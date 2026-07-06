import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

/// Token styling untuk [CardProfile].
class CardProfileTheme {
  const CardProfileTheme({
    required this.borderRadius,
    required this.padding,
    required this.avatarSize,
    required this.avatarBorderWidth,
    required this.gap,
    required this.nameStyle,
    required this.emailStyle,
    required this.badgeBackgroundColor,
    required this.badgeForegroundColor,
    required this.shadow,
  });

  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double avatarSize;
  final double avatarBorderWidth;
  final double gap;
  final TextStyle nameStyle;
  final TextStyle emailStyle;
  final Color badgeBackgroundColor;
  final Color badgeForegroundColor;
  final List<BoxShadow> shadow;

  static CardProfileTheme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CardProfileTheme(
      borderRadius: size(20),
      padding: EdgeInsets.symmetric(horizontal: size(20), vertical: size(24)),
      avatarSize: size(80),
      avatarBorderWidth: size(3),
      gap: size(10),
      nameStyle: (textTheme.titleMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      emailStyle: textTheme.labelMedium ?? const TextStyle(),
      badgeBackgroundColor: UiThemeHelpers.profileBadgeBackground(context),
      badgeForegroundColor: Colors.white,
      shadow: UiThemeHelpers.elevationShadow(context, blur: 16, offsetY: 4),
    );
  }

  CardProfileTheme copyWith({
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    double? avatarSize,
    double? avatarBorderWidth,
    double? gap,
    TextStyle? nameStyle,
    TextStyle? emailStyle,
    Color? badgeBackgroundColor,
    Color? badgeForegroundColor,
    List<BoxShadow>? shadow,
  }) {
    return CardProfileTheme(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      avatarSize: avatarSize ?? this.avatarSize,
      avatarBorderWidth: avatarBorderWidth ?? this.avatarBorderWidth,
      gap: gap ?? this.gap,
      nameStyle: nameStyle ?? this.nameStyle,
      emailStyle: emailStyle ?? this.emailStyle,
      badgeBackgroundColor: badgeBackgroundColor ?? this.badgeBackgroundColor,
      badgeForegroundColor: badgeForegroundColor ?? this.badgeForegroundColor,
      shadow: shadow ?? this.shadow,
    );
  }
}
