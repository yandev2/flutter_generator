import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/const/app_constants.dart';
import '../../../service/routes/route_name.dart';

class IntroductionController extends GetxController {
  @override
  void onInit() {
    printInfo(info: 'IntroductionController init');
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    printInfo(info: 'IntroductionController close');
    pageController.dispose();
    super.onClose();
  }

  late PageController pageController;
  RxInt currentPageIndex = 0.obs;
  final int totalPages = 4;

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }

  void nextPage() async {
    if (currentPageIndex.value < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      final prefs = Get.find<SharedPreferences>();
      await prefs.setBool(AppConstants.introduction, true);
      Get.offAllNamed(RouteName.guest);
    }
  }

  final introData = [
    {
      "title": "Temukan Program Kebaikan untuk Semua",
      "desc":
          "Jelajahi berbagai program zakat, infak, sedekah, dan wakaf yang memberi manfaat nyata bagi masyarakat yang membutuhkan.",
      "image": "assets/img/intro_1.png",
    },
    {
      "title": "Donasi Mudah, Cepat, dan Praktis",
      "desc":
          "Pilih nominal, metode pembayaran, dan selesaikan donasi dalam beberapa langkah mudah. Kebaikan Anda, segera terampai.",
      "image": "assets/img/intro_2.png",
    },
    {
      "title": "Pantau Dampak, Kebaikan Jadi Nyata",
      "desc":
          "Lihat sejauh mana bantuan Anda memberi manfaat dan dampak bagi sesama secara transparan dan real-time.",
      "image": "assets/img/intro_3.png",
    },
    {
      "title": "Transaksi Aman, Terpercaya, dan Terlindungi",
      "desc":
          "Sistem pembayaran aman berstandar tinggi dan diawasi BAZNAS. Donasi Anda aman, nyaman, tanpa khawatir.",
      "image": "assets/img/intro_4.png",
    },
  ];
}
