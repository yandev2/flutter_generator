import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../core/ui/navigation/app_bottom_navigation.dart';
import '../../../shared/program/view/program_main.dart';
import '../../../shared/zakat/view/zakat_main_view.dart';
import '../../profile/view/profile_muzzaki_view.dart';
import '../../riwayat/view/riwayat_list_muzzaki_view.dart';
import '../controller/navigation_muzzaki_controller.dart';
import '../../dashboard/view/dashboard_muzzaki_view.dart';

class NavigationMuzzakiView extends GetView<NavigationMuzzakiController> {
  const NavigationMuzzakiView({super.key});

  static const List<Widget> _tabWidgets = [
    DashboardMuzzakiView(),
    ZakatMainView(),
    ProgramMain(),
    RiwayatListMuzzakiView(),
    ProfileMuzzakiView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: List.generate(
            controller.tabCount,
            (index) => controller.isTabVisited(index)
                ? _tabWidgets[index]
                : const SizedBox.shrink(),
          ),
        ),
        bottomNavigationBar: AppBottomNavigation(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTab,
          items: [
            AppBottomNavItem(icon: HeroIcons.home, label: 'Beranda'),
            AppBottomNavItem(icon: HeroIcons.calculator, label: 'Zakat'),
            AppBottomNavItem(icon: HeroIcons.heart, label: 'Program'),
            AppBottomNavItem(icon: HeroIcons.documentText, label: 'Riwayat'),
            AppBottomNavItem(icon: HeroIcons.user, label: 'Profil'),
          ],
        ),
      ),
    );
  }
}
