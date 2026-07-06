import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_main.dart';

import '../../../../core/ui/card/card_style_4.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/theme/card_style_4_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';
import '../controller/disbursement_main_controller.dart';

class DisbursementMainView extends GetView<DisbursementMainController> {
  const DisbursementMainView({super.key});

  @override
  Widget build(BuildContext context) {
    final loadingItem = CardStyle4.network(
      isLoading: true,
      imageUrl: "",
      title: '----------------------------',
      referenceId: '---------',
      location: '------------',
      checkInLabel: "Sumber anggaran",
      checkInDate: '------',
      status: CardStyle4Status(label: '-', color: Get.theme.colorScheme.secondary),
      margin: EdgeInsets.only(bottom: size(15)),
    );

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => controller.refresh(),
        child: CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            AppbarMain(
              title: 'Disbursement / Penyaluran',
              isSearch: controller.searchQuery,
              onReset: () => controller.refresh(),
              onSearch: (v) {
                controller.searchQuery.value = v;
              },
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: size(16), vertical: size(20)),
              sliver: Obx(() {
                final showShimmer =
                    controller.isLoading.value && controller.disbursementList.isEmpty;
                if (showShimmer) {
                  return SliverList.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return loadingItem;
                    },
                  );
                }
                if (controller.errorMessage.value.isNotEmpty) {
                  return SliverFillRemaining(
                    child: AppEmptyState(
                      title: 'Terjadi Kesalahan',
                      message: controller.errorMessage.value,
                      actionLabel: 'Coba Lagi',
                      onAction: () => controller.refresh(),
                    ),
                  );
                }

                if (controller.disbursementList.isEmpty) {
                  return SliverFillRemaining(
                    child: AppEmptyState(
                      title: 'Belum ada penyaluran',
                      message: 'Data penyaluran akan tampil di sini.',
                    ),
                  );
                }

                return SliverList.builder(
                  itemCount:
                      controller.disbursementList.length + (controller.isLoadingMore.value ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index >= controller.disbursementList.length) {
                      return loadingItem;
                    }

                    final item = controller.disbursementList[index];

                    return CardStyle4.network(
                      isLoading: controller.isLoading.value,
                      imageUrl: "${item.proofUrl}",
                      title: item.mustahik?.name ?? '-',
                      referenceId: item.updatedAt?.toDateId() ?? '-',
                      location: item.upz ?? '-',
                      checkInLabel: "Sumber anggaran",
                      checkInDate: item.fundType ?? '-',
                      status: CardStyle4Status(
                        label: item.mustahik?.asnafCategory ?? '-',
                        color: Get.theme.colorScheme.secondary,
                      ),
                      margin: EdgeInsets.only(bottom: size(15)),
                      onTap: () => Get.toNamed(RouteName.disbursementDetail, arguments: item.id),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
