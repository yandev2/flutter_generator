import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/disbursement_item_list_entity.dart';

import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_style_4.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/theme/app_button_theme.dart';
import '../../../../core/ui/theme/card_style_4_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';

class DisbursementOverview extends StatelessWidget {
  const DisbursementOverview({
    super.key,
    required this.item,
    required this.isLoading,
    required this.showMore,
  });

  final List<DisbursementItemListEntity?> item;
  final RxBool isLoading;
  final VoidCallback showMore;

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    final loadingItem = CardStyle4.network(
      isLoading: true,
      imageUrl: "",
      title: "VVVVVVVVVVVV",
      referenceId: "VVVVVVVVVVVV",
      location: 'VVVVV',
      checkInLabel: "VVVVVVVV",
      checkInDate: "VVVVVVVVVVVV",
      status: CardStyle4Status(label: '-', color: theme.colorScheme.secondary),
      margin: EdgeInsets.only(right: size(20), bottom: size(15), top: size(15)),
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
                  height: size(200),
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
                title: 'Belum ada penyaluran',
                message: 'Data penyaluran akan tampil di sini.',
              );
            }

            return CarouselSlider.builder(
              itemCount: item.length,
              options: CarouselOptions(
                viewportFraction: 0.9,
                height: size(200),
                enableInfiniteScroll: false,
                padEnds: false,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
              itemBuilder: (context, index, _) {
                final disbursement = item[index];
                return RepaintBoundary(
                  child: CardStyle4.network(
                    imageUrl: "${disbursement?.proofUrl}",
                    title: disbursement?.mustahik?.name ?? '-',
                    referenceId: disbursement?.updatedAt.toDateId(),
                    location: disbursement?.upz ?? '-',
                    checkInLabel: "Sumber anggaran",
                    checkInDate: disbursement?.fundType,
                    status: CardStyle4Status(
                      label: disbursement?.mustahik?.asnafCategory ?? '-',
                      color: theme.colorScheme.secondary,
                    ),
                    margin: EdgeInsets.only(right: size(20), bottom: size(15), top: size(15)),
                    onTap: () =>
                        Get.toNamed(RouteName.disbursementDetail, arguments: disbursement?.id),
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
