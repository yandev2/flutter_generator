import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/theme/app_scale.dart';
import '../../../core/ui/button/app_button.dart';
import '../../../core/ui/checkbox/app_checkbox.dart';
import '../../../core/ui/input/app_input.dart';
import '../../../core/ui/input/app_input_password.dart';
import '../../../core/ui/input/parts/input_affix.dart';
import '../../../core/ui/theme/app_checkbox_theme.dart';
import '../../../service/routes/route_name.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: Get.height / 3,
              backgroundColor: Get.theme.primaryColor,
              iconTheme: IconThemeData(color: Colors.white),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/icon/mosque.png',
                      fit: BoxFit.cover,
                      color: Colors.white.withAlpha(40),
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Get.theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: size(20)),
              sliver: SliverList.list(
                children: [
                  AppInput(
                    controller: controller.identifierController,
                    label: 'Email / Nomor WhatsApp',
                    hint: 'Masukkan email atau nomor aktif',
                    prefix: InputAffix.heroIcon(HeroIcons.user),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: size(15)),
                  AppInputPassword(
                    controller: controller.passwordController,
                    label: 'Password',
                    hint: 'Masukkan password Anda',
                    showStrengthMeter: false,
                  ),

                  SizedBox(height: size(20)),
                  Expanded(
                    child: Obx(
                      () => AppCheckbox(
                        value: controller.isSaveLogin.value,
                        onChanged: (val) =>
                            controller.isSaveLogin.value = val ?? false,
                        title: 'Simpan info login',
                        style: AppCheckboxTheme.of(
                          context,
                        ).copyWith(titleStyle: theme.textTheme.titleSmall),
                      ),
                    ),
                  ),

                  SizedBox(height: size(30)),
                  Obx(
                    () => AppButton.primary(
                      isLoading: controller.authService.isLoading.value,
                      onPressed: controller.login,
                      label: 'Masuk Untuk Melanjutkan',
                      expand: true,
                    ),
                  ),

                  SizedBox(height: size(30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum terdaftar? ',
                        style: theme.textTheme.bodyMedium,
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(RouteName.register),
                        child: Text(
                          'Daftar Sekarang',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
