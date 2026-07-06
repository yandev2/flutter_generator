abstract class AppConstants {
  static const String appName = 'SimZakat';
  static const String appVersion = '1.0.0';

  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;
  static const String baseUrl = 'http://72.62.162.43:3000/api/mobile/v1';

  static const String tokenKey = 'auth_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  static const String onboardingKey = 'onboarding_completed';
  static const String introduction = 'introduction';
  static const int offlineSessionGraceDays = 14;
}
