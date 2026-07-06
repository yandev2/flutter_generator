import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

/// Token styling untuk [CardStyle3].
class CardStyle3Theme {
  const CardStyle3Theme({
    required this.borderRadius,
    required this.imageRadius,
    required this.padding,
    required this.gap,
    required this.imageWidth,
    required this.imageHeight,
    required this.categoryStyle,
    required this.titleStyle,
    required this.metaStyle,
    required this.iconSize,
    required this.ratingIconColor,
    required this.shadow,
  });

  final double borderRadius;
  final double imageRadius;
  final EdgeInsetsGeometry padding;
  final double gap;
  final double imageWidth;
  final double imageHeight;
  final TextStyle categoryStyle;
  final TextStyle titleStyle;
  final TextStyle metaStyle;
  final double iconSize;
  final Color ratingIconColor;
  final List<BoxShadow> shadow;

  static CardStyle3Theme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CardStyle3Theme(
      borderRadius: size(16),
      imageRadius: size(12),
      padding: EdgeInsets.all(size(10)),
      gap: size(6),
      imageWidth: size(100),
      imageHeight: size(100),
      categoryStyle: textTheme.labelMedium ?? const TextStyle(),
      titleStyle: (textTheme.titleMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      metaStyle: textTheme.labelMedium ?? const TextStyle(),
      iconSize: size(13),
      ratingIconColor: AppColors.amber,
      shadow: UiThemeHelpers.elevationShadow(context, blur: 12, offsetY: 3),
    );
  }

  CardStyle3Theme copyWith({
    double? borderRadius,
    double? imageRadius,
    EdgeInsetsGeometry? padding,
    double? gap,
    double? imageWidth,
    double? imageHeight,
    TextStyle? categoryStyle,
    TextStyle? titleStyle,
    TextStyle? metaStyle,
    double? iconSize,
    Color? ratingIconColor,
    List<BoxShadow>? shadow,
  }) {
    return CardStyle3Theme(
      borderRadius: borderRadius ?? this.borderRadius,
      imageRadius: imageRadius ?? this.imageRadius,
      padding: padding ?? this.padding,
      gap: gap ?? this.gap,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      categoryStyle: categoryStyle ?? this.categoryStyle,
      titleStyle: titleStyle ?? this.titleStyle,
      metaStyle: metaStyle ?? this.metaStyle,
      iconSize: iconSize ?? this.iconSize,
      ratingIconColor: ratingIconColor ?? this.ratingIconColor,
      shadow: shadow ?? this.shadow,
    );
  }
}
