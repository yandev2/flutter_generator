import 'app_scale.dart';
import 'package:flutter/material.dart';
import 'theme_manager.dart';

abstract final class AppColors {
  // ─── Primary — Hijau BAZNAS ───────────────────────────────────────────────
  /// Hijau brand — vibrant untuk light UI.
  static const Color primaryLight = Color(0xFF1B8F4E);

  /// Hijau brand — desaturated mint untuk dark UI (lebih nyaman di mata).
  static const Color primaryDark = Color(0xFF7CB88A);

  static const Color onPrimaryLight = Color(0xFFFFFFFF);
  static const Color onPrimaryDark = Color(0xFF0A2414);

  static const Color primaryContainerLight = Color(0xFFD8F0E0);
  static const Color primaryContainerDark = Color(0xFF1E3A2A);
  static const Color onPrimaryContainerLight = Color(0xFF0D3B1F);
  static const Color onPrimaryContainerDark = Color(0xFFB5DEC4);

  // ─── Semantic — dual palette ──────────────────────────────────────────────
  static const Color blueLight = Color(0xFF1976D2);
  static const Color blueDark = Color(0xFF8AB4F8);

  static const Color redLight = Color(0xFFD32F2F);
  static const Color redDark = Color(0xFFEF9A9A);

  static const Color warningLight = Color(0xFFF57C00);
  static const Color warningDark = Color(0xFFFFCC80);

  static const Color amberLight = Color(0xFFFFA000);
  static const Color amberDark = Color(0xFFFFE082);

  // ─── Background & surface elevation ───────────────────────────────────────
  /// Level 0 — scaffold / background paling gelap.
  static const Color bgLight = Color(0xFFF5F7F6);
  static const Color bgDark = Color(0xFF121212);

  /// Level 1 — kartu, input fill, komponen dasar.
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF1E1E1E);

  /// Level 2 — chip, section, hover ringan.
  static const Color surfaceElevated2Light = Color(0xFFF0F3F1);
  static const Color surfaceElevated2Dark = Color(0xFF232323);

  /// Level 3 — dropdown, app bar scrolled, menu.
  static const Color surfaceElevated3Light = Color(0xFFE8ECE9);
  static const Color surfaceElevated3Dark = Color(0xFF2C2C2C);

  /// Level 4 — dialog, modal, sheet.
  static const Color surfaceElevated4Light = Color(0xFFFFFFFF);
  static const Color surfaceElevated4Dark = Color(0xFF333333);

  // ─── Text ─────────────────────────────────────────────────────────────────
  static const Color textLight = Color(0xFF1A1A1A);
  static const Color textDark = Color(0xFFE8E8E8);

  static const Color textMutedLight = Color(0xFF6B7280);
  static const Color textMutedDark = Color(0xFFB3B3B3);

  // ─── Border / outline ─────────────────────────────────────────────────────
  static const Color borderLight = Color(0xFFE2E8E4);
  static const Color borderDark = Color(0xFF3D3D3D);

  // ─── Dynamic getters (sinkron dengan [isDark]) ────────────────────────────
  static Color get primary => isDark.value ? primaryDark : primaryLight;
  static Color get onPrimary => isDark.value ? onPrimaryDark : onPrimaryLight;
  static Color get primaryContainer => isDark.value ? primaryContainerDark : primaryContainerLight;
  static Color get onPrimaryContainer =>
      isDark.value ? onPrimaryContainerDark : onPrimaryContainerLight;

  static Color get blue => isDark.value ? blueDark : blueLight;
  static Color get red => isDark.value ? redDark : redLight;
  static Color get warning => isDark.value ? warningDark : warningLight;
  static Color get amber => isDark.value ? amberDark : amberLight;

  static Color get bg => isDark.value ? bgDark : bgLight;
  static Color get surface => isDark.value ? surfaceDark : surfaceLight;
  static Color get surfaceElevated2 => isDark.value ? surfaceElevated2Dark : surfaceElevated2Light;
  static Color get surfaceElevated3 => isDark.value ? surfaceElevated3Dark : surfaceElevated3Light;
  static Color get surfaceElevated4 => isDark.value ? surfaceElevated4Dark : surfaceElevated4Light;

  static Color get text => isDark.value ? textDark : textLight;
  static Color get textMuted => isDark.value ? textMutedDark : textMutedLight;
  static Color get border => isDark.value ? borderDark : borderLight;

  /// Surface by elevation level (0 = bg … 4 = modal).
  static Color surfaceAt(int level) {
    return switch (level.clamp(0, 4)) {
      0 => bg,
      1 => surface,
      2 => surfaceElevated2,
      3 => surfaceElevated3,
      _ => surfaceElevated4,
    };
  }
}

ColorScheme _darkColorScheme() {
  return const ColorScheme.dark(
    primary: AppColors.primaryDark,
    onPrimary: AppColors.onPrimaryDark,
    primaryContainer: AppColors.primaryContainerDark,
    onPrimaryContainer: AppColors.onPrimaryContainerDark,
    secondary: AppColors.blueDark,
    onSecondary: AppColors.bgDark,
    surface: AppColors.surfaceDark,
    onSurface: AppColors.textDark,
    surfaceContainerLowest: AppColors.bgDark,
    surfaceContainerLow: AppColors.surfaceDark,
    surfaceContainer: AppColors.surfaceElevated2Dark,
    surfaceContainerHigh: AppColors.surfaceElevated3Dark,
    surfaceContainerHighest: AppColors.surfaceElevated4Dark,
    outline: AppColors.borderDark,
    outlineVariant: Color(0xFF2A2A2A),
    scrim: Color(0xCC000000),
    error: AppColors.redDark,
    onError: AppColors.bgDark,
    shadow: Colors.transparent,
  );
}

ColorScheme _lightColorScheme() {
  return const ColorScheme.light(
    primary: AppColors.primaryLight,
    onPrimary: AppColors.onPrimaryLight,
    primaryContainer: AppColors.primaryContainerLight,
    onPrimaryContainer: AppColors.onPrimaryContainerLight,
    secondary: AppColors.blueLight,
    onSecondary: AppColors.onPrimaryLight,
    surface: AppColors.surfaceLight,
    onSurface: AppColors.textLight,
    surfaceContainerLowest: AppColors.bgLight,
    surfaceContainerLow: AppColors.surfaceLight,
    surfaceContainer: AppColors.surfaceElevated2Light,
    surfaceContainerHigh: AppColors.surfaceElevated3Light,
    surfaceContainerHighest: AppColors.surfaceElevated4Light,
    outline: AppColors.borderLight,
    outlineVariant: Color(0xFFF0F3F1),
    scrim: Color(0x8A000000),
    error: AppColors.redLight,
    onError: AppColors.onPrimaryLight,
    shadow: Color(0x140F172A),
  );
}

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.bgDark,
  shadowColor: Colors.transparent,
  cardColor: AppColors.surfaceDark,
  dividerColor: AppColors.borderDark,
  colorScheme: _darkColorScheme(),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.bgDark,
    foregroundColor: AppColors.textDark,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    iconTheme: const IconThemeData(color: AppColors.textDark),
    titleTextStyle: TextStyle(
      color: AppColors.textDark,
      fontSize: size(14),
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: _buildTextTheme(primary: AppColors.textDark, muted: AppColors.textMutedDark),
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryLight,
  scaffoldBackgroundColor: AppColors.bgLight,
  shadowColor: const Color(0x140F172A),
  cardColor: AppColors.surfaceLight,
  dividerColor: AppColors.borderLight,
  colorScheme: _lightColorScheme(),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.bgLight,
    foregroundColor: AppColors.textLight,
    iconTheme: const IconThemeData(color: AppColors.textLight),
    titleTextStyle: TextStyle(
      color: AppColors.textLight,
      fontSize: size(14),
      fontWeight: FontWeight.bold,
    ),
    scrolledUnderElevation: 0,
    elevation: 0,
  ),
  textTheme: _buildTextTheme(primary: AppColors.textLight, muted: AppColors.textMutedLight),
);

TextTheme _buildTextTheme({required Color primary, required Color muted}) {
  return TextTheme(
    titleLarge: TextStyle(color: primary, fontSize: size(14), fontWeight: FontWeight.bold),
    titleMedium: TextStyle(color: primary, fontSize: size(12), fontWeight: FontWeight.bold),
    titleSmall: TextStyle(color: primary, fontSize: size(10), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: primary, fontSize: size(12), fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(color: primary, fontSize: size(10), fontWeight: FontWeight.w400),
    bodySmall: TextStyle(color: primary, fontSize: size(9), fontWeight: FontWeight.w400),
    labelLarge: TextStyle(color: muted, fontSize: size(10), fontWeight: FontWeight.w500),
    labelMedium: TextStyle(color: muted, fontSize: size(9), fontWeight: FontWeight.w400),
    labelSmall: TextStyle(color: muted, fontSize: size(8), fontWeight: FontWeight.w400),
  );
}
