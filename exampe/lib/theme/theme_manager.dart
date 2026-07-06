import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/const/app_constants.dart';

final isDark = false.obs;

class ThemeManager extends GetxController {
  @override
  void onReady() async {
    _initTheme();
    super.onReady();
  }

  void switchTheme() async {
    final prefts = Get.find<SharedPreferences>();
    isDark.value = !isDark.value;
    await prefts.setBool(AppConstants.themeKey, isDark.value);
  }

  void _initTheme() async {
    final prefts = Get.find<SharedPreferences>();
    isDark.value = prefts.getBool(AppConstants.themeKey) ?? false;
  }
}
