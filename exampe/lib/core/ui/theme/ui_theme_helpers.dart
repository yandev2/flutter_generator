import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';

abstract final class UiThemeHelpers {
  static bool isDark(BuildContext context) => Theme.of(context).brightness == Brightness.dark;

  static List<BoxShadow> elevationShadow(
    BuildContext context, {
    double blur = 12,
    double offsetY = 3,
    double lightOpacity = 0.08,
    double darkOpacity = 0.22,
  }) {
    final dark = isDark(context);
    return [
      BoxShadow(
        color: Colors.black.withValues(alpha: dark ? darkOpacity : lightOpacity),
        blurRadius: size(blur.round()),
        offset: Offset(0, size(offsetY.round())),
      ),
    ];
  }

  /// Ring/border avatar — kontras di light & dark.
  static Color avatarRingColor(BuildContext context) {
    return isDark(context) ? AppColors.text.withValues(alpha: 0.14) : AppColors.surface;
  }

  /// Background badge pill profil.
  static Color profileBadgeBackground(BuildContext context) {
    return isDark(context) ? AppColors.text.withValues(alpha: 0.2) : const Color(0xFF1A1A2E);
  }

  /// Aksen ungu untuk toast feature / AI.
  static Color featureAccent(BuildContext context) {
    return isDark(context) ? const Color(0xFFA78BFA) : const Color(0xFF7C3AED);
  }

  /// Border halus (secondary button, divider).
  static Color subtleBorder(BuildContext context) {
    return AppColors.text.withValues(alpha: isDark(context) ? 0.16 : 0.12);
  }

  /// Background toast/feature tint.
  static Color tintedBackground(BuildContext context, Color accent) {
    return accent.withValues(alpha: isDark(context) ? 0.16 : 0.1);
  }
}
