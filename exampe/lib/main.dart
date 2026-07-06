import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'service/dependency/dependency_injection.dart';
import 'service/routes/route_app.dart';
import 'service/routes/route_name.dart';
import 'theme/app_scale.dart';
import 'theme/theme.dart';
import 'theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  final prefs = await SharedPreferences.getInstance();
  Get.put(prefs, permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return Obx(
          () => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RouteName.main,
            initialBinding: InitialBinding(),
            getPages: RouteApp.route,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: isDark.isTrue ? ThemeMode.dark : ThemeMode.light,
            builder: (context, extendedChild) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale())),
                child: extendedChild!,
              );
            },
          ),
        );
      },
    );
  }
}
