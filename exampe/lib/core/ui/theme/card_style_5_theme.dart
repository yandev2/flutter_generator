import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

class CardStyle5Theme {
  const CardStyle5Theme({
    required this.borderRadius,
    required this.padding,
    required this.gap,
    required this.avatarSize,
    required this.titleStyle,
    required this.subtitleStyle,
    required this.actionSize,
    required this.actionIconSize,
    required this.actionColor,
    required this.actionIconColor,
    required this.shadow,
  });

  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double gap;
  final double avatarSize;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final double actionSize;
  final double actionIconSize;
  final Color actionColor;
  final Color actionIconColor;
  final List<BoxShadow> shadow;

  static CardStyle5Theme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CardStyle5Theme(
      borderRadius: size(16),
      padding: EdgeInsets.symmetric(horizontal: size(12), vertical: size(10)),
      gap: size(6),
      avatarSize: size(48),
      titleStyle: (textTheme.bodyLarge ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      subtitleStyle: textTheme.labelMedium ?? const TextStyle(),
      actionSize: size(44),
      actionIconSize: size(20),
      actionColor: AppColors.blue,
      actionIconColor: Colors.white,
      shadow: UiThemeHelpers.elevationShadow(context, blur: 10, offsetY: 2),
    );
  }

  CardStyle5Theme copyWith({
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    double? gap,
    double? avatarSize,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    double? actionSize,
    double? actionIconSize,
    Color? actionColor,
    Color? actionIconColor,
    List<BoxShadow>? shadow,
  }) {
    return CardStyle5Theme(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      gap: gap ?? this.gap,
      avatarSize: avatarSize ?? this.avatarSize,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      actionSize: actionSize ?? this.actionSize,
      actionIconSize: actionIconSize ?? this.actionIconSize,
      actionColor: actionColor ?? this.actionColor,
      actionIconColor: actionIconColor ?? this.actionIconColor,
      shadow: shadow ?? this.shadow,
    );
  }
}
