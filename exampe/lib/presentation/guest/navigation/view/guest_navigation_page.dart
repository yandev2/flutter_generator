import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/core/ui/navigation/app_bottom_navigation.dart';
import '../controller/guest_navigation_controller.dart';

class GuestNavigationPage extends GetView<GuestNavigationController> {
  const GuestNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: List.generate(
            controller.tabCount,
            (index) => controller.isTabVisited(index)
                ? controller.tabWidgets[index]
                : const SizedBox.shrink(),
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          items: [
            AppBottomNavItem(label: 'Beranda', icon: HeroIcons.home),
            AppBottomNavItem(label: 'Program', icon: HeroIcons.squares2x2),
            AppBottomNavItem(label: 'Penyaluran', icon: HeroIcons.documentText),
          ],
        ),
      ),
    );
  }
}
