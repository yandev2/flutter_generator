import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

import '../../../core/ui/button/app_button.dart';
import '../../../core/ui/checkbox/app_checkbox.dart';
import '../../../core/ui/input/app_input.dart';
import '../../../core/ui/input/app_input_password.dart';
import '../../../core/ui/input/app_input_select.dart';
import '../../../core/ui/input/parts/input_affix.dart';
import '../../../theme/app_scale.dart';
import '../controller/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
        canPop: controller.step.value == 0,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          if (controller.step.value > 0) {
            controller.step.value -= 1;
            controller.changeStep();
          }
        },
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: Get.height / 3.2,
                  backgroundColor: Get.theme.primaryColor,
                  iconTheme: const IconThemeData(color: Colors.white),
                  leading: GestureDetector(
                    onTap: () {
                      if (controller.step.value > 0) {
                        controller.step.value -= 1;
                        controller.changeStep();
                      } else {
                        Get.back();
                      }
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
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
                      height: size(20),
                      decoration: BoxDecoration(
                        color: Get.theme.scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: size(20)),
                  sliver: SliverList.list(
                    children: [
                      Row(
                        spacing: size(15),
                        children: [
                          Container(
                            padding: EdgeInsets.all(size(10)),
                            decoration: BoxDecoration(
                              color: Get.theme.primaryColor.withAlpha(50),
                              borderRadius: BorderRadius.circular(size(10)),
                            ),
                            child: HeroIcon(
                              HeroIcons.userPlus,
                              color: Get.theme.primaryColor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  controller.titleStep.value,
                                  style: Get.theme.textTheme.titleLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                'Lengkapi data diri Anda',
                                style: Get.theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: size(20)),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: controller.step.value == 0
                            ? _Step1Form(
                                key: const ValueKey('step1'),
                                controller: controller,
                              )
                            : _Step2Form(
                                key: const ValueKey('step2'),
                                controller: controller,
                              ),
                      ),
                      SizedBox(height: size(32)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Step1Form extends StatelessWidget {
  const _Step1Form({super.key, required this.controller});
  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        AppInput(
          controller: controller.nameController,
          label: "Nama Muzzaki",
          hint: "Masukan nama institusi/individu",
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: size(20)),
        AppInput(
          controller: controller.phoneController,
          label: "Nomor Telepon",
          hint: "Mis. 087766778877",
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: size(20)),
        Obx(
          () => AppInputSelect(
            label: "Tipe Muzakki",
            items: const ['Individu', 'Institusi'],
            value: controller.typeMuzzaki.value,
            onChanged: (val) {
              if (val != null) {
                controller.typeMuzzaki.value = val;
              }
            },
          ),
        ),
        SizedBox(height: size(20)),
        AppInput(
          controller: controller.nikController,
          label: "NIK (Nomor Induk Kependudukan)",
          hint: "Mis. 320987654321",
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: size(20)),
        AppInput(
          controller: controller.npwpController,
          label: "NPWP (Opsional)",
          hint: "Mis. 123456789012345",
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: size(24)),
        Container(
          padding: EdgeInsets.all(size(12)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size(12)),
            border: Border.all(
              color: theme.dividerColor.withAlpha(30),
              width: size(1),
            ),
          ),
          child: Obx(
            () => AppCheckbox(
              value: controller.isAnonim.value,
              onChanged: (val) => controller.isAnonim.value = val ?? false,
              title: "Hamba Allah (Anonim)",
              description: "Centang jika tidak ingin nama dipublikasikan",
            ),
          ),
        ),
        SizedBox(height: size(32)),
        Obx(
          () => AppButton.primary(
            isLoading: controller.authService.isLoading.value,
            onPressed: () => controller.nextStep(),
            label: "Lanjut ke Langkah Berikutnya",
            expand: true,
          ),
        ),
      ],
    );
  }
}

class _Step2Form extends StatelessWidget {
  const _Step2Form({super.key, required this.controller});
  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          controller: controller.emailController,
          label: "Email",
          hint: "Masukan email Anda",
          prefix: InputAffix.heroIcon(HeroIcons.envelope),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: size(20)),
        AppInputPassword(
          controller: controller.passwordController,
          label: "Password",
          hint: "Masukkan password baru",
          helperText: "Minimal 8 karakter",
        ),
        SizedBox(height: size(20)),
        AppInputPassword(
          controller: controller.confirmPasswordController,
          label: "Konfirmasi Password",
          hint: "Ketik ulang password",
          showStrengthMeter: false,
        ),
        SizedBox(height: size(32)),
        Obx(
          () => AppCheckbox(
            value: controller.isTermsAccepted.value,
            onChanged: (val) => controller.isTermsAccepted.value = val ?? false,
            title: "Saya setuju dengan Syarat & Ketentuan",
          ),
        ),
        SizedBox(height: size(32)),
        Obx(
          () => AppButton.primary(
            isLoading: controller.authService.isLoading.value,
            onPressed: () => controller.register(),
            label: "Daftar Sekarang",
            expand: true,
          ),
        ),
      ],
    );
  }
}
