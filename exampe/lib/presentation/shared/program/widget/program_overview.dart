import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_style_1.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/theme/app_button_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../domain/entity/response/programs_item_list_entity.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';

class ProgramOverview extends StatelessWidget {
  const ProgramOverview({
    super.key,
    required this.item,
    required this.isLoading,
    required this.showMore,
  });

  final List<ProgramsItemListEntity?> item;
  final RxBool isLoading;
  final VoidCallback showMore;

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    final loadingItem = CardStyle1.network(
      isLoading: true,
      imageUrl: "-",
      margin: EdgeInsets.only(right: size(20), bottom: size(15), top: size(15)),
      width: Get.width,
      title: '===================',
      edition: '==========================',
      avatarUrls: ['-', '-', '-'],
      price: "==========",
      timeLabel: "======",
      content: Bone(
        width: Get.width,
        height: size(18),
        borderRadius: BorderRadius.circular(size(10)),
      ),
      timeLeading: HeroIcon(HeroIcons.sparkles, color: AppColors.blue),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Program Utama', style: theme.textTheme.titleMedium),
              AppButton(
                label: 'Lihat Semua',
                variant: AppButtonVariant.ghost,
                textStyle: theme.textTheme.bodySmall,
                padding: EdgeInsets.zero,
                expand: false,
                onPressed: showMore,
              ),
            ],
          ),
          Obx(() {
            if (isLoading.value) {
              return CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  height: size(380),
                  enableInfiniteScroll: false,
                  padEnds: false,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
                itemBuilder: (context, index, _) {
                  return loadingItem;
                },
              );
            }

            if (item.isEmpty) {
              return AppEmptyState(
                title: 'Belum ada program',
                message: 'Program donasi akan tampil di sini.',
              );
            }

            return CarouselSlider.builder(
              itemCount: item.length,
              options: CarouselOptions(
                viewportFraction: 0.8,
                height: size(380),
                enableInfiniteScroll: false,
                padEnds: false,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
              itemBuilder: (context, index, _) {
                final program = item[index];

                return RepaintBoundary(
                  child: CardStyle1.network(
                    imageUrl: "${program?.bannerUrl}",
                    margin: EdgeInsets.only(
                      right: size(20),
                      bottom: size(15),
                      top: size(15),
                    ),
                    onTap: () => Get.toNamed(
                      RouteName.programDetail,
                      arguments: program?.id,
                    ),
                    width: Get.width,
                    title: program?.name ?? '-',
                    edition: program?.endDate.toDateId(),
                    avatarUrls: program?.donatur,
                    price: "Target ${program?.targetAmount.toRupiah()}",
                    timeLabel: "Donasi Sekarang!",
                    content: LinearPercentIndicator(
                      padding: EdgeInsets.only(right: size(10)),
                      barRadius: Radius.circular(20),
                      percent: program?.percentTarget.toRawPercent() ?? 0,
                      lineHeight: size(7),
                      progressColor: Get.theme.primaryColor,
                      trailing: Text(
                        "${program?.percentTarget.toRawPercent().toPercent(fractionDigits: 1)}",
                        style: Get.theme.textTheme.titleSmall?.copyWith(
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ),
                    timeLeading: HeroIcon(
                      HeroIcons.sparkles,
                      color: AppColors.blue,
                    ),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
