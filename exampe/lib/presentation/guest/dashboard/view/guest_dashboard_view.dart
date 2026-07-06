import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/shared/app_dashboard_appbar.dart';
import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/error/app_error_view.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../../../shared/disbursement/widget/disbursement_overview.dart';
import '../../../shared/program/widget/program_overview.dart';
import '../../../shared/zakat/widget/calculator_overview.dart';
import '../controller/guest_dashboard_controller.dart';
import '../../navigation/controller/guest_navigation_controller.dart';
import '../../../../core/utils/style.dart';

class GuestDashboardView extends GetView<GuestDashboardController> {
  const GuestDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: RefreshIndicator(
        onRefresh: controller.refresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: controller.scrollController,
          slivers: [
            const AppDashboardAppBar(title: 'BAZNAS', subtitle: 'Selamat Datang, Guest'),
            if (controller.errorMessage.isEmpty) ...[
              const SliverToBoxAdapter(child: _WelcomeSection()),
              SliverToBoxAdapter(child: CalculatorOverview(isLoading: controller.isLoading)),
              SliverToBoxAdapter(child: SizedBox(height: size(20))),
              SliverToBoxAdapter(
                child: ProgramOverview(
                  isLoading: controller.isLoading,
                  item: controller.featuredPrograms,
                  showMore: () {
                    Get.find<GuestNavigationController>().changePage(1);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: DisbursementOverview(
                  isLoading: controller.isLoadingDisbursements,
                  item: controller.disbursementList,
                  showMore: () {
                    Get.find<GuestNavigationController>().changePage(2);
                  },
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: size(20))),
            ],

            if (controller.errorMessage.isNotEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(size(16)),
                  child: AppErrorView(
                    message: controller.errorMessage.value,
                    screenBackgroundColor: Colors.transparent,
                    cardBackgroundColor: Colors.transparent,
                    fillScreen: true,
                    actionLabel: "Refresh",
                    onAction: () => controller.refresh(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _WelcomeSection extends GetView<GuestDashboardController> {
  const _WelcomeSection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Obx(
      () => Skeletonizer(
        containersColor: theme.cardColor,
        ignoreContainers: true,
        enabled: controller.isLoading.value,
        child: Container(
          margin: EdgeInsets.all(size(16)),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(size(16)),
            boxShadow: [boxShadow],
          ),
          child: Row(
            spacing: size(10),
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(size(16), size(16), size(0), size(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Selamat Datang',
                        style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: size(4)),
                      Text(
                        'Yuk, hitung dan tunaikan zakat Anda dengan mudah.',
                        style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: size(10)),
                      Skeleton.replace(
                        replacement: Bone(
                          width: size(120),
                          height: size(40),
                          borderRadius: BorderRadius.circular(size(16)),
                        ),
                        child: SizedBox(
                          width: size(120),
                          child: AppButton.secondary(
                            label: 'Login',
                            leadingIcon: HeroIcons.arrowRightEndOnRectangle,
                            backgroundColor: AppColors.textDark,
                            foregroundColor: theme.primaryColor,
                            onPressed: () => Get.toNamed(RouteName.login),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Skeleton.replace(
                width: size(143),
                height: size(143),
                replacement: Padding(
                  padding: EdgeInsets.all(size(16)),
                  child: Bone(
                    width: size(140),
                    height: size(140),
                    borderRadius: BorderRadius.circular(size(16)),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size(20)),
                  child: Image.asset(
                    'assets/icon/ZakatTijarah.png',
                    height: size(140),
                    width: size(140),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
