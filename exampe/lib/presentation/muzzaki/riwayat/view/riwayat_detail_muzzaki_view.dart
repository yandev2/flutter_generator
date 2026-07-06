import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../../../core/shared/appbar_detail_view.dart';
import '../../../../core/ui/error/app_error_view.dart';
import '../../../../core/utils/style.dart';
import '../../../../theme/app_scale.dart';
import '../controller/riwayat_detail_muzzaki_controller.dart';
import '../../../../core/utils/formatter.dart';
import '../widget/status_config.dart';

class RiwayatDetailMuzzakiView extends GetView<RiwayatDetailMuzzakiController> {
  const RiwayatDetailMuzzakiView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,

      body: RefreshIndicator(
        onRefresh: () => controller.loadDetail(Get.arguments),
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            AppbarDetailView(title: "Detail Transaksi", isBack: true),
            Obx(() {
              if (controller.isLoadingDetail.isFalse &&
                  controller.errorMessage.isNotEmpty) {
                return SliverToBoxAdapter(
                  child: AppErrorView(
                    title: "Terjadi Kesalahan",
                    message: controller.errorMessage.value,
                    fillScreen: true,
                    cardBackgroundColor: Colors.transparent,
                    screenBackgroundColor: Colors.transparent,
                    actionLabel: "Refresh",
                    onAction: () => controller.loadDetail(Get.arguments),
                  ),
                );
              } else {
                return SliverMainAxisGroup(
                  slivers: const [
                    _HeaderSection(),
                    _DetailTransaksiSection(),
                    _TrackingTimelineSection(),
                    _DownloadFileSection(),
                  ],
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Get.find<RiwayatDetailMuzzakiController>();

    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(20)),
      sliver: SliverList.list(
        children: [
          Obx(() {
            final data = controller.transaction.value;
            final statusConfig = getStatusConfig(data?.status ?? '');
            return Skeletonizer(
              enabled: controller.isLoadingDetail.value,
              child: Container(
                padding: EdgeInsets.all(size(16)),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(size(16)),
                  boxShadow: [boxShadow],
                ),
                child: Column(
                  children: [
                    Column(
                      spacing: size(10),
                      children: [
                        Text(
                          "Total Amount",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.textTheme.labelSmall!.color,
                          ),
                        ),
                        Text(
                          "${(data?.amount ?? 0).toRupiah()}",
                          style: theme.textTheme.titleLarge?.copyWith(
                            letterSpacing: 1,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: size(12),
                            vertical: size(6),
                          ),
                          decoration: BoxDecoration(
                            color: statusConfig.color.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(size(20)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Skeleton.replace(
                                replacement: Bone(
                                  width: size(10),
                                  height: size(10),
                                  borderRadius: BorderRadius.circular(size(5)),
                                ),
                                child: HeroIcon(
                                  statusConfig.icon,
                                  color: statusConfig.color,
                                  size: size(16),
                                ),
                              ),
                              SizedBox(width: size(6)),
                              Text(
                                statusConfig.label,
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: statusConfig.color,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _DetailTransaksiSection extends StatelessWidget {
  const _DetailTransaksiSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Get.find<RiwayatDetailMuzzakiController>();
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(20)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Obx(() {
            final data = controller.transaction.value;
            return Skeletonizer(
              enabled: controller.isLoadingDetail.value,
              child: Container(
                padding: EdgeInsets.all(size(16)),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(size(16)),
                  boxShadow: [boxShadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Transaksi",
                      style: theme.textTheme.titleMedium,
                    ),

                    SizedBox(height: size(15)),
                    _ItemRow(
                      label: "Program",
                      content: data?.programName ?? '-',
                    ),
                    _ItemRow(
                      label: "Metode Pembayaran",
                      content: data?.paymentMethod ?? '-',
                    ),
                    _ItemRow(label: "Nomor BSZ", content: data?.bszNo ?? '-'),
                    _ItemRow(
                      label: "Tanggal",
                      content: data?.paymentDate.toDateId() ?? '-',
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({required this.label, required this.content});

  final String label;
  final String? content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: size(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: theme.textTheme.labelMedium),
          Text(content ?? '-', style: theme.textTheme.titleSmall),
        ],
      ),
    );
  }
}

class _TimelineStep {
  final String title;
  final String? date;
  final bool isCompleted;

  _TimelineStep(this.title, this.date) : isCompleted = date != null;

  String get formattedDate {
    if (date == null) return '-';
    return '${date.toDateId()} ${date.toTimeId()}';
  }
}

class _TrackingTimelineSection extends StatelessWidget {
  const _TrackingTimelineSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Get.find<RiwayatDetailMuzzakiController>();

    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(20)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Obx(() {
            final data = controller.transaction.value;
            final timelineData = data?.trackingTimeline;

            final steps = [
              _TimelineStep(
                "Pembayaran Diterima",
                timelineData?.paymentReceivedAt,
              ),
              _TimelineStep("Diverifikasi", timelineData?.verifiedAt),
              _TimelineStep("Dialokasikan", timelineData?.allocatedAt),
              _TimelineStep("Disalurkan", timelineData?.distributedAt),
            ];

            return Skeletonizer(
              enabled: controller.isLoadingDetail.value,
              child: Container(
                padding: EdgeInsets.all(size(16)),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(size(16)),
                  boxShadow: [boxShadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Status Penyaluran",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: size(20)),
                    FixedTimeline.tileBuilder(
                      theme: TimelineThemeData(
                        nodePosition: 0,
                        color: theme.dividerColor,
                        indicatorTheme: IndicatorThemeData(
                          position: 0,
                          size: size(12),
                        ),
                        connectorTheme: ConnectorThemeData(thickness: 2),
                      ),
                      builder: TimelineTileBuilder.connected(
                        connectionDirection: ConnectionDirection.before,
                        itemCount: steps.length,
                        contentsBuilder: (context, index) {
                          final step = steps[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              left: size(12),
                              bottom: index == steps.length - 1 ? 0 : size(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  step.title,
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    color: step.isCompleted
                                        ? theme.textTheme.titleMedium?.color
                                        : theme.textTheme.labelSmall?.color,
                                    fontWeight: step.isCompleted
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                if (step.date != null) ...[
                                  SizedBox(height: size(4)),
                                  Text(
                                    step.formattedDate,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ],
                              ],
                            ),
                          );
                        },
                        indicatorBuilder: (context, index) {
                          final step = steps[index];
                          if (step.isCompleted) {
                            return DotIndicator(
                              color: theme.primaryColor,
                              child: Icon(
                                Icons.check,
                                size: size(8),
                                color: Colors.white,
                              ),
                            );
                          } else {
                            return OutlinedDotIndicator(
                              color: theme.dividerColor,
                            );
                          }
                        },
                        connectorBuilder: (context, index, type) {
                          final step = steps[index];
                          return SolidLineConnector(
                            color: step.isCompleted
                                ? theme.primaryColor
                                : theme.dividerColor,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _DownloadFileSection extends StatelessWidget {
  const _DownloadFileSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Get.find<RiwayatDetailMuzzakiController>();
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(20)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Obx(() {
            final data = controller.transaction.value;
            return Skeletonizer(
              enabled: controller.isLoadingDetail.value,
              child: GestureDetector(
                onTap: () => controller.downloadBsz(
                  data?.receiptUrl ?? '',
                  data?.bszNo ?? '-',
                ),
                child: Container(
                  padding: EdgeInsets.all(size(16)),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(size(16)),
                    boxShadow: [boxShadow],
                  ),
                  child: Row(
                    spacing: size(15),
                    children: [
                      Skeleton.replace(
                        replacement: Bone(
                          height: size(40),
                          width: size((40)),
                          borderRadius: BorderRadius.circular(size(16)),
                        ),
                        child: Container(
                          height: size(40),
                          width: size((40)),
                          padding: EdgeInsets.all(size(10)),
                          decoration: BoxDecoration(
                            color: theme.primaryColor.withAlpha(30),
                            borderRadius: BorderRadius.circular(size(16)),
                          ),
                          child: HeroIcon(
                            HeroIcons.arrowDownTray,
                            color: theme.primaryColor,
                            size: size(17),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Column(
                          spacing: size(5),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Download invoice Id",
                              style: theme.textTheme.titleMedium,
                            ),
                            Text(
                              data?.bszNo ?? '-',
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
