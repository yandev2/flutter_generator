import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/ui/dialog/app_ui_dialog.dart';
import '../../../core/ui/theme/app_dialog_theme.dart';
import '../../../domain/entity/request/register_request_entity.dart';
import '../../../service/auth/auth_service.dart';

class RegisterController extends GetxController {
  final isTermsAccepted = false.obs;
  final step = 0.obs;
  final titleStep = "Mulai Pendaftaran Akun Baru".obs;
  final authService = Get.find<AuthService>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final nikController = TextEditingController();
  final npwpController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final typeMuzzaki = 'Individu'.obs;
  final isAnonim = false.obs;

  void toggleTerms() {
    isTermsAccepted.value = !isTermsAccepted.value;
  }

  void changeStep() {
    switch (step.value) {
      case 0:
        titleStep.value = "Mulai Pendaftaran Akun Baru";
        break;
      case 1:
        titleStep.value = "Informasi Akun";
        break;
      case 2:
        titleStep.value = "Verifikasi Email";
        break;
      default:
    }
  }

  String? _validationStep1() {
    if (nameController.text.trim().isEmpty) {
      return "Data Belum Lengkap|Mohon isi nama lengkap Anda.";
    } else if (phoneController.text.trim().isEmpty) {
      return "Data Belum Lengkap|Mohon isi nomor telepon Anda.";
    } else if (!GetUtils.isNum(phoneController.text.trim())) {
      return "Format Tidak Sesuai|Nomor telepon hanya boleh berisi angka.";
    } else if (typeMuzzaki.value.trim().isEmpty) {
      return "Pilihan Kosong|Silakan pilih jenis muzaki terlebih dahulu.";
    } else if (nikController.text.trim().isEmpty) {
      return "Data Belum Lengkap|Mohon masukkan NIK Anda.";
    } else if (!GetUtils.isNum(nikController.text.trim())) {
      return "Format Tidak Sesuai|NIK hanya boleh berisi angka.";
    } else if (nikController.text.trim().length < 16) {
      return "Format Tidak Sesuai|NIK harus terdiri dari minimal 16 digit angka.";
    } else {
      return null;
    }
  }

  String? _validationStep2() {
    if (emailController.text.trim().isEmpty) {
      return "Data Belum Lengkap|Mohon isi alamat email Anda.";
    } else if (!GetUtils.isEmail(emailController.text.trim())) {
      return "Format Tidak Sesuai|Pastikan penulisan format email sudah benar.";
    } else if (passwordController.text.trim().isEmpty) {
      return "Data Belum Lengkap|Mohon buat kata sandi untuk akun Anda.";
    } else if (passwordController.text.trim() !=
        confirmPasswordController.text.trim()) {
      return "Kata Sandi Berbeda|Konfirmasi kata sandi tidak cocok, silakan periksa kembali.";
    } else if (isTermsAccepted.isFalse) {
      return "Persetujuan Diperlukan|Anda harus menyetujui syarat dan ketentuan untuk melanjutkan.";
    } else {
      return null;
    }
  }

  void nextStep() async {
    final isValidate = _validationStep1();
    if (isValidate != null) {
      final message = isValidate.split('|');
      return await showAppUiDialog(
        context: Get.context!,
        title: message[0],
        message: message[1],
        variant: AppDialogVariant.warning,
      );
    }
    step.value = 1;
    changeStep();
  }

  Future register() async {
    final isValidate = _validationStep2();
    if (isValidate != null) {
      final message = isValidate.split('|');
      showAppUiDialog(
        context: Get.context!,
        title: message[0],
        message: message[1],
        variant: AppDialogVariant.warning,
      );
      return;
    }

    final data = RegisterRequestEntity(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      phone: phoneController.text.trim(),
      type: typeMuzzaki.value.toLowerCase(),
      nik: nikController.text.trim(),
      npwp: npwpController.text.trim(),
      password: passwordController.text.trim(),
      confirmPassword: confirmPasswordController.text.trim(),
    );
    await authService.register(data);
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    nikController.dispose();
    npwpController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
