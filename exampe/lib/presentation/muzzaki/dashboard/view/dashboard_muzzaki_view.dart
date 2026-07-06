import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/shared/app_dashboard_appbar.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../../../shared/disbursement/widget/disbursement_overview.dart';
import '../../../shared/program/widget/program_overview.dart';
import '../controller/dashboard_muzzaki_controller.dart';
import '../../navigation/controller/navigation_muzzaki_controller.dart';
import '../../../../core/utils/formatter.dart';

class DashboardMuzzakiView extends GetView<DashboardMuzzakiController> {
  const DashboardMuzzakiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => controller.refresh(),
        child: CustomScrollView(
          slivers: [
            _AppbarSection(),

            if (controller.errorMessage.isEmpty) ...[
              SliverToBoxAdapter(child: _WelcomeSection()),
              SliverToBoxAdapter(child: _QuickActionSection()),
              SliverToBoxAdapter(
                child: ProgramOverview(
                  isLoading: controller.isLoading,
                  item: controller.featuredPrograms,
                  showMore: () {
                    //Get.find<GuestNavigationController>().changePage(1);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: DisbursementOverview(
                  isLoading: controller.isLoadingDisbursements,
                  item: controller.disbursementList,
                  showMore: () {
                    Get.find<NavigationMuzzakiController>().changeTab(2);
                  },
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: size(20))),
            ],
          ],
        ),
      ),
    );
  }
}

class _AppbarSection extends StatelessWidget {
  const _AppbarSection();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardMuzzakiController>();
    final theme = Get.theme;

    return Obx(
      () => AppDashboardAppBar(
        title: controller.user.value?.name ?? 'Loading...',
        subtitle: controller.user.value?.status ?? 'Loading...',
        avatarUrl: controller.user.value?.avatar,
        trailingWidget: GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(size(10)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.primaryColor.withAlpha(13),
            ),
            child: HeroIcon(
              HeroIcons.bell,
              size: 24,
              color: theme.iconTheme.color ?? Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

class _WelcomeSection extends StatelessWidget {
  const _WelcomeSection();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardMuzzakiController>();
    final summary = controller.contributionSummary.value;
    final theme = Get.theme;

    return Obx(() {
      final isLoading = controller.isLoading.value;
      return Skeletonizer(
        enabled: isLoading,
        containersColor: theme.cardColor,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: size(16),
            vertical: size(10),
          ),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(size(16)),
          ),

          child: Stack(
            children: [
              if (isLoading == false)
                Positioned(
                  bottom: size(0),
                  child: Image.asset(
                    "assets/icon/mosque.png",
                    width: Get.width,
                    fit: BoxFit.cover,
                    color: Colors.white.withAlpha(30),
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(size(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: size(5),
                      children: [
                        Text(
                          'Total Kontribusi Anda',
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        HeroIcon(HeroIcons.sparkles, color: Colors.white),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: size(8),
                            vertical: size(3),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(size(20)),
                          ),
                          child: Text(
                            'Tahun Ini',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size(10)),
                    Text(
                      "${((summary?.totalZakat ?? 0) + (summary?.totalDonasi ?? 0)).toRupiah()}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size(20),
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),

                    SizedBox(height: size(16)),
                    Row(
                      children: [
                        Expanded(
                          child: _contributionItem(
                            label: 'Zakat',
                            value: "${(summary?.totalZakat ?? 0).toRupiah()}",
                            icon: HeroIcons.bookmarkSquare,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: size(36),
                          color: Colors.white.withValues(alpha: 0.2),
                        ),
                        Expanded(
                          child: _contributionItem(
                            label: 'Donasi',
                            value: "${(summary?.totalDonasi ?? 0).toRupiah()}",
                            icon: HeroIcons.sparkles,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: size(36),
                          color: Colors.white.withValues(alpha: 0.2),
                        ),
                        Expanded(
                          child: _contributionItem(
                            label: 'BSZ',
                            value: '${summary?.bszCountThisYear ?? 0} Lembar',
                            icon: HeroIcons.circleStack,
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
    });
  }

  Widget _contributionItem({
    required String label,
    required String value,
    required HeroIcons icon,
  }) {
    return Column(
      children: [
        HeroIcon(
          icon,
          color: Colors.white.withValues(alpha: 0.7),
          size: size(20),
        ),
        SizedBox(height: size(4)),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: size(9),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: size(2)),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.7),
            fontSize: size(9),
          ),
        ),
      ],
    );
  }
}

class _QuickActionSection extends StatelessWidget {
  const _QuickActionSection();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardMuzzakiController>();
    final theme = Get.theme;
    return Obx(
      () => Skeletonizer(
        enabled: controller.isLoading.value,
        child: Column(
          children: [
            SizedBox(height: size(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size(16)),
              child: Row(
                spacing: size(15),
                children: [
                  _quickActionItem(
                    theme: theme,
                    icon: HeroIcons.calculator,
                    label: 'Bayar Zakat',
                    color: AppColors.primary,
                    onTap: () =>
                        Get.find<NavigationMuzzakiController>().changeTab(1),
                  ),

                  _quickActionItem(
                    theme: theme,
                    icon: HeroIcons.sparkles,
                    label: 'Donasi',
                    color: AppColors.amber,
                    onTap: () =>
                        Get.find<NavigationMuzzakiController>().changeTab(2),
                  ),

                  _quickActionItem(
                    theme: theme,
                    icon: HeroIcons.clipboard,
                    label: 'Riwayat',
                    color: AppColors.blue,
                    onTap: () =>
                        Get.find<NavigationMuzzakiController>().changeTab(3),
                  ),

                  _quickActionItem(
                    theme: theme,
                    icon: HeroIcons.user,
                    label: 'Profil',
                    color: AppColors.red,
                    onTap: () =>
                        Get.find<NavigationMuzzakiController>().changeTab(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _quickActionItem({
    required ThemeData theme,
    required HeroIcons icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: Skeleton.leaf(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: size(16)),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(size(16)),
              border: Border.all(color: color.withValues(alpha: 0.15)),
            ),
            child: Column(
              children: [
                HeroIcon(icon, color: color, size: size(24)),
                SizedBox(height: size(6)),
                Text(
                  label,
                  style: TextStyle(
                    color: color,
                    fontSize: size(9),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
