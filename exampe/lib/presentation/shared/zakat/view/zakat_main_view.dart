import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/service/routes/route_name.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/shared/appbar_detail_view.dart';
import '../../../../core/ui/card/card_style_4.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/error/app_error_view.dart';
import '../../../../core/ui/image/app_image.dart';
import '../../../../core/ui/theme/app_empty_theme.dart';
import '../../../../core/utils/style.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../controller/zakat_main_controller.dart';

class ZakatMainView extends GetView<ZakatMainController> {
  const ZakatMainView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: RefreshIndicator(
        onRefresh: () => controller.fetchZakatTypes(),
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            AppbarDetailView(title: "Tunaikan Zakat", isBack: true),
            if (controller.errorMessage.isEmpty) ...[
              _HeaderSection(),
              _ContentSection(),
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
                    onAction: () => controller.fetchZakatTypes(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ContentSection extends GetView<ZakatMainController> {
  const _ContentSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final itemloading = CardStyle4.network(
      isLoading: true,
      imageUrl: "",
      imageHeight: size(50),
      imageWidth: size(50),
      title: '-------------------',
      content: Bone(
        width: Get.width,
        height: size(25),
        borderRadius: BorderRadius.circular(size(10)),
      ),
      margin: EdgeInsets.only(bottom: size(10)),
    );
    return SliverList.list(
      children: [
        SizedBox(height: size(20)),
        Obx(() {
          if (controller.isLoadingTypes.isTrue) {
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: size(16)),
              itemCount: 5,
              itemBuilder: (context, index) {
                return itemloading;
              },
            );
          } else if (controller.zakatTypes.isEmpty) {
            return AppEmptyState.screen(
              title: "Belum Ada Data",
              message: "Tidak ada data untuk di tampilkan",
              style: AppEmptyTheme.of(
                context,
              ).copyWith(illustrationColor: AppColors.amber.withAlpha(100)),
            );
          } else {
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: size(16)),
              itemCount: controller.zakatTypes.length,
              itemBuilder: (context, index) {
                final item = controller.zakatTypes[index];
                return CardStyle4(
                  image: AppImage(
                    imageUrl: "${item.iconUrl}",
                    width: size(30),
                    height: size(30),
                    fit: BoxFit.contain,
                  ),
                  imageHeight: size(50),
                  imageWidth: size(50),
                  title: item.name ?? '-',
                  content: Text(
                    item.description ?? '-',
                    style: theme.textTheme.labelMedium,
                  ),
                  margin: EdgeInsets.only(bottom: size(10)),
                  onTap: () => Get.toNamed(
                    RouteName.zakatCalculate,
                    arguments: {
                      'zakatType': item,
                      'nisabRates': controller.zakatTypes.toList(),
                    },
                  ),
                );
              },
            );
          }
        }),
      ],
    );
  }
}

class _HeaderSection extends GetView<ZakatMainController> {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          Obx(
            () => Skeletonizer(
              enabled: controller.isLoadingTypes.value,
              containersColor: theme.cardColor,
              child: Container(
                padding: EdgeInsets.all(size(16)),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(size(16)),
                  boxShadow: [boxShadow],
                ),
                child: Row(
                  spacing: size(10),
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size(10),
                              vertical: size(10),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(size(10)),
                              color: Colors.white.withAlpha(30),
                            ),
                            child: Row(
                              children: [
                                Skeleton.replace(
                                  width: size(15),
                                  height: size(15),
                                  child: HeroIcon(
                                    HeroIcons.calculator,
                                    color: Colors.white,
                                    size: size(15),
                                  ),
                                ),

                                SizedBox(width: size(10)),
                                Text(
                                  "Hitung Zakat",
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: size(10)),
                          Text(
                            "Sucikan harta, tenangkan jiwa. Sudahkah Anda menghitung zakat hari ini?",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(size(16)),
                      child: Image.asset(
                        "assets/icon/kalkulator.png",
                        width: size(100),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
