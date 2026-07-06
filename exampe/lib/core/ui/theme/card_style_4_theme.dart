import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import 'ui_theme_helpers.dart';

class CardStyle4Theme {
  const CardStyle4Theme({
    required this.borderRadius,
    required this.imageRadius,
    required this.padding,
    required this.sectionGap,
    required this.gap,
    required this.imageWidth,
    required this.imageHeight,
    required this.referenceStyle,
    required this.statusStyle,
    required this.titleStyle,
    required this.metaStyle,
    required this.dateLabelStyle,
    required this.dateValueStyle,
    required this.iconSize,
    required this.statusRadius,
    required this.shadow,
    required this.dividerColor,
  });

  final double borderRadius;
  final double imageRadius;
  final EdgeInsetsGeometry padding;
  final double sectionGap;
  final double gap;
  final double imageWidth;
  final double imageHeight;
  final TextStyle referenceStyle;
  final TextStyle statusStyle;
  final TextStyle titleStyle;
  final TextStyle metaStyle;
  final TextStyle dateLabelStyle;
  final TextStyle dateValueStyle;
  final double iconSize;
  final double statusRadius;
  final List<BoxShadow> shadow;
  final Color dividerColor;

  static CardStyle4Theme of(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CardStyle4Theme(
      borderRadius: size(16),
      imageRadius: size(12),
      padding: EdgeInsets.all(size(14)),
      sectionGap: size(14),
      gap: size(8),
      imageWidth: size(88),
      imageHeight: size(88),
      referenceStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.text,
      ),
      statusStyle: (textTheme.labelSmall ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w600,
      ),
      titleStyle: (textTheme.titleSmall ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      metaStyle: textTheme.labelMedium ?? const TextStyle(),
      dateLabelStyle: textTheme.labelSmall ?? const TextStyle(),
      dateValueStyle: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
      iconSize: size(13),
      statusRadius: size(20),
      dividerColor: AppColors.text.withValues(alpha: 0.08),
      shadow: UiThemeHelpers.elevationShadow(context, blur: 12, offsetY: 3),
    );
  }

  CardStyle4Theme copyWith({
    double? borderRadius,
    double? imageRadius,
    EdgeInsetsGeometry? padding,
    double? sectionGap,
    double? gap,
    double? imageWidth,
    double? imageHeight,
    TextStyle? referenceStyle,
    TextStyle? statusStyle,
    TextStyle? titleStyle,
    TextStyle? metaStyle,
    TextStyle? dateLabelStyle,
    TextStyle? dateValueStyle,
    double? iconSize,
    double? statusRadius,
    List<BoxShadow>? shadow,
    Color? dividerColor,
  }) {
    return CardStyle4Theme(
      borderRadius: borderRadius ?? this.borderRadius,
      imageRadius: imageRadius ?? this.imageRadius,
      padding: padding ?? this.padding,
      sectionGap: sectionGap ?? this.sectionGap,
      gap: gap ?? this.gap,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      referenceStyle: referenceStyle ?? this.referenceStyle,
      statusStyle: statusStyle ?? this.statusStyle,
      titleStyle: titleStyle ?? this.titleStyle,
      metaStyle: metaStyle ?? this.metaStyle,
      dateLabelStyle: dateLabelStyle ?? this.dateLabelStyle,
      dateValueStyle: dateValueStyle ?? this.dateValueStyle,
      iconSize: iconSize ?? this.iconSize,
      statusRadius: statusRadius ?? this.statusRadius,
      shadow: shadow ?? this.shadow,
      dividerColor: dividerColor ?? this.dividerColor,
    );
  }
}

/// Preset warna badge status.
class CardStyle4Status {
  const CardStyle4Status({
    required this.label,
    required this.color,
    this.backgroundColor,
    this.borderColor,
  });

  final String label;
  final Color color;
  final Color? backgroundColor;
  final Color? borderColor;

  Color get bg => backgroundColor ?? color.withValues(alpha: 0.12);
  Color get border => borderColor ?? color.withValues(alpha: 0.5);

  static CardStyle4Status canceled() => CardStyle4Status(label: 'Canceled', color: AppColors.red);

  static CardStyle4Status completed() =>
      CardStyle4Status(label: 'Completed', color: AppColors.primary);

  static CardStyle4Status pending() => CardStyle4Status(label: 'Pending', color: AppColors.amber);
}
