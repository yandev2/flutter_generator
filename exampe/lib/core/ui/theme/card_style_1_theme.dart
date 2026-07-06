import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

class CardStyle1Theme {
  const CardStyle1Theme({
    required this.borderRadius,
    required this.imageRadius,
    required this.padding,
    required this.contentGap,
    required this.titleStyle,
    required this.editionStyle,
    required this.priceStyle,
    required this.actionStyle,
    required this.timeTagStyle,
    required this.avatarSize,
    required this.avatarOverlap,
    required this.avatarBorderWidth,
    required this.shadow,
    required this.accentColor,
  });

  final double borderRadius;
  final double imageRadius;
  final EdgeInsetsGeometry padding;
  final double contentGap;
  final TextStyle titleStyle;
  final TextStyle editionStyle;
  final TextStyle priceStyle;
  final TextStyle actionStyle;
  final TextStyle timeTagStyle;
  final double avatarSize;
  final double avatarOverlap;
  final double avatarBorderWidth;
  final List<BoxShadow> shadow;
  final Color accentColor;

  static CardStyle1Theme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CardStyle1Theme(
      borderRadius: size(20),
      imageRadius: size(16),
      padding: EdgeInsets.all(size(12)),
      contentGap: size(12),
      titleStyle: (textTheme.titleMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      editionStyle: textTheme.labelMedium ?? const TextStyle(),
      priceStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.blue,
      ),
      actionStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      timeTagStyle: (textTheme.labelSmall ?? const TextStyle()).copyWith(
        color: AppColors.blue,
        fontWeight: FontWeight.w500,
      ),
      avatarSize: size(28),
      avatarOverlap: size(10),
      avatarBorderWidth: 2,
      accentColor: AppColors.blue,
      shadow: UiThemeHelpers.elevationShadow(context, blur: 16, offsetY: 4),
    );
  }

  CardStyle1Theme copyWith({
    double? borderRadius,
    double? imageRadius,
    EdgeInsetsGeometry? padding,
    double? contentGap,
    TextStyle? titleStyle,
    TextStyle? editionStyle,
    TextStyle? priceStyle,
    TextStyle? actionStyle,
    TextStyle? timeTagStyle,
    double? avatarSize,
    double? avatarOverlap,
    double? avatarBorderWidth,
    List<BoxShadow>? shadow,
    Color? accentColor,
  }) {
    return CardStyle1Theme(
      borderRadius: borderRadius ?? this.borderRadius,
      imageRadius: imageRadius ?? this.imageRadius,
      padding: padding ?? this.padding,
      contentGap: contentGap ?? this.contentGap,
      titleStyle: titleStyle ?? this.titleStyle,
      editionStyle: editionStyle ?? this.editionStyle,
      priceStyle: priceStyle ?? this.priceStyle,
      actionStyle: actionStyle ?? this.actionStyle,
      timeTagStyle: timeTagStyle ?? this.timeTagStyle,
      avatarSize: avatarSize ?? this.avatarSize,
      avatarOverlap: avatarOverlap ?? this.avatarOverlap,
      avatarBorderWidth: avatarBorderWidth ?? this.avatarBorderWidth,
      shadow: shadow ?? this.shadow,
      accentColor: accentColor ?? this.accentColor,
    );
  }
}
