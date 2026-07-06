import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../core/ui/navigation/app_bottom_navigation.dart';
import '../controller/navigation_amil_surveyor_controller.dart';
import '../../dashboard/view/dashboard_surveyor_view.dart';
import '../../survey_task/view/survey_task_list_view.dart';
import '../../mustahik/view/mustahik_list_view.dart';
import '../../laporan/view/laporan_surveyor_view.dart';
import '../../profile/view/profile_surveyor_view.dart';

class NavigationAmilSurveyorPage
    extends GetView<NavigationAmilSurveyorController> {
  const NavigationAmilSurveyorPage({super.key});

  static const List<Widget> _tabWidgets = [
    DashboardSurveyorView(),
    SurveyTaskListView(),
    MustahikListView(),
    LaporanSurveyorView(),
    ProfileSurveyorView(),
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
          onTap: controller.changePage,
          items: [
            AppBottomNavItem(icon: HeroIcons.home, label: 'Dashboard'),
            AppBottomNavItem(
              icon: HeroIcons.clipboardDocumentList,
              label: 'Task',
            ),
            AppBottomNavItem(icon: HeroIcons.userGroup, label: 'Mustahik'),
            AppBottomNavItem(icon: HeroIcons.documentText, label: 'Laporan'),
            AppBottomNavItem(icon: HeroIcons.user, label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
