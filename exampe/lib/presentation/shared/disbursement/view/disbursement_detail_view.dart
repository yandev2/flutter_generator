import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_detail_view.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/ui/image/app_image.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../domain/entity/response/disbursement_entity.dart';
import '../../../../theme/app_scale.dart';
import '../controller/disbursement_detail_controller.dart';

class DisbursementDetailView extends GetView<DisbursementDetailController> {
  const DisbursementDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => controller.loadDetail(Get.arguments),
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            AppbarDetailView(title: "Detail penyaluran", isBack: true),
            Obx(() {
              if (controller.disbursement.value == null && controller.isLoading.isFalse) {
                return const SliverFillRemaining(
                  child: Center(child: Text('Data tidak ditemukan')),
                );
              }
              return const _HeaderSection();
            }),
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends GetView<DisbursementDetailController> {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: Obx(() {
        final data = controller.disbursement.value;
        return SliverSkeletonizer(
          containersColor: Get.theme.cardColor,
          enabled: controller.isLoading.value,
          child: SliverList.list(
            children: [
              Skeleton.leaf(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size(16)),
                  child: AppImage(
                    imageUrl: data?.proofUrl ?? '',
                    width: Get.width,
                    height: size(230),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: size(20)),
              Align(
                alignment: Alignment.centerLeft,
                child: Skeleton.leaf(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size(10), vertical: size(4)),
                    decoration: BoxDecoration(
                      color: Get.theme.primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(size(6)),
                    ),
                    child: Row(
                      spacing: size(10),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeroIcon(HeroIcons.mapPin, color: Get.theme.primaryColor, size: size(17)),
                        Text(
                          data?.location ?? '-',
                          style: Get.theme.textTheme.titleSmall?.copyWith(
                            color: Get.theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size(15)),

              Text(
                "${data?.amount.toRupiah()}",
                style: Get.theme.textTheme.titleLarge?.copyWith(height: 1.3),
              ),

              SizedBox(height: size(10)),
              Text(
                "Penyaluran dana ${data?.fundType ?? 'Infak/Sedekah'} sebesar ${data?.amount?.toRupiah() ?? 'Rp 5.000.000'} kepada ${data?.mustahik?.name ?? 'Fulan Mustahik'} (Asnaf: ${data?.mustahik?.asnafCategory ?? 'Fisabilillah'}), diserahkan secara ${data?.disbursementType ?? 'Qardh'} melalui ${data?.upz ?? 'UPZ Pusat'}.",
                style: Get.theme.textTheme.labelMedium?.copyWith(height: 1.5),
              ),

              SizedBox(height: size(10)),
              JournalDetailCard(journalData: data?.journal),
            ],
          ),
        );
      }),
    );
  }
}

class JournalDetailCard extends StatelessWidget {
  final DisbursementJournalEntity? journalData;

  const JournalDetailCard({super.key, required this.journalData});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    String checkNull(dynamic value, {bool isAmount = false}) {
      if (value == null) return "-";
      if (isAmount && value is int) return "${value.toRupiah()}";
      return value.toString();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size(20)),
        Row(
          spacing: size(10),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Data Jurnal Akuntansi",
                style: textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Skeleton.leaf(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  checkNull(journalData?.status).toUpperCase(),
                  style: textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: size(16)),
        Skeleton.leaf(child: Divider(height: 1, color: Get.theme.primaryColor.withAlpha(30))),
        SizedBox(height: size(16)),

        _buildJournalRow(
          context,
          label: "No. Referensi",
          value: checkNull(journalData?.referenceNo),
        ),
        const SizedBox(height: 12),

        _buildJournalRow(
          context,
          label: "Tanggal Transaksi",
          value: checkNull(journalData?.transactionDate.toDateId()),
        ),
        const SizedBox(height: 12),

        _buildJournalRow(context, label: "Deskripsi", value: checkNull(journalData?.description)),
        const SizedBox(height: 12),

        _buildJournalRow(
          context,
          label: "Total Nominal",
          value: checkNull(journalData?.totalAmount.toRupiah(), isAmount: true),
          isBoldValue: true,
        ),
      ],
    );
  }

  Widget _buildJournalRow(
    BuildContext context, {
    required String label,
    required String value,
    bool isBoldValue = false,
  }) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 2, child: Text(label, style: textTheme.labelMedium)),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: isBoldValue ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
