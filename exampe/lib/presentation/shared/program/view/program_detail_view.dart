import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_detail_view.dart';
import 'package:simzakat_baznas_lubuklinggau/service/routes/route_name.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_style_4.dart';
import '../../../../core/ui/card/card_style_5.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/error/app_error_view.dart';
import '../../../../core/ui/image/app_image.dart';
import '../../../../core/ui/segment/app_segment_control.dart';
import '../../../../core/ui/theme/app_segment_theme.dart';
import '../../../../core/ui/theme/card_style_4_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../core/utils/style.dart';
import '../../../../domain/entity/response/program_entity.dart';
import '../../../../theme/app_scale.dart';
import '../controller/program_detail_controller.dart';
import '../../disbursement/widget/disbursement_time_line.dart';

class ProgramDetailView extends GetView<ProgramDetailController> {
  const ProgramDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Obx(() {
        if (controller.errorMessage.value.isNotEmpty) {
          return _ErrorView(errorMessage: controller.errorMessage.value);
        }
        if (controller.program.value == null &&
            !controller.isLoadingDetail.value) {
          return const _ErrorView();
        }
        return Skeletonizer(
          enabled: controller.isLoadingDetail.value,
          textBoneBorderRadius: TextBoneBorderRadius.fromHeightFactor(.5),
          child: _ProgramContent(),
        );
      }),
      bottomNavigationBar: _BottomSection(),
    );
  }
}

class _ProgramContent extends GetView<ProgramDetailController> {
  const _ProgramContent();

  @override
  Widget build(BuildContext context) {
    final program = controller.program.value ?? const ProgramEntity();
    return RefreshIndicator(
      onRefresh: () => controller.loadProgramDetail(Get.arguments),
      child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          AppbarDetailView(title: "Detail Program", isBack: true),
          _HeaderSection(),
          _DistributionSummarySection(program: program),
          _TabSection(),
          SliverToBoxAdapter(child: SizedBox(height: size(10))),
          _TabContentSliver(),
        ],
      ),
    );
  }
}

class _TabContentSliver extends GetView<ProgramDetailController> {
  const _TabContentSliver();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.tabIndex.value == ProgramDetailController.tabPenyaluran) {
        return const _DisbursementSliver();
      } else {
        return const _DonaturSliver();
      }
    });
  }
}

class _TabSection extends GetView<ProgramDetailController> {
  const _TabSection();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(size(20), size(20), size(20), 0),
        child: Obx(
          () => Skeleton.leaf(
            child: AppSegmentControl<int>(
              value: controller.tabIndex.value,
              onChanged: controller.changeTab,
              style: AppSegmentTheme.of(
                context,
              ).copyWith(borderColor: Colors.transparent, trackPadding: 0),
              options: [
                AppSegmentOption(
                  value: ProgramDetailController.tabPenyaluran,
                  label: 'Penyaluran',
                ),
                AppSegmentOption(
                  value: ProgramDetailController.tabDonatur,
                  label: 'Donatur',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomSection extends GetView<ProgramDetailController> {
  const _BottomSection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Obx(
      () => Skeletonizer(
        enabled: controller.isLoadingDetail.value,
        child: Container(
          padding: EdgeInsets.fromLTRB(size(20), size(16), size(20), size(24)),
          decoration: BoxDecoration(
            color: theme.cardColor,
            boxShadow: [boxShadow],
            borderRadius: BorderRadius.vertical(top: Radius.circular(size(30))),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Skeleton.replace(
                  replacement: Bone(
                    height: size(45),
                    width: Get.width,
                    borderRadius: BorderRadius.circular(size(16)),
                  ),
                  child: AppButton.primary(
                    onPressed: () => Get.toNamed(
                      RouteName.paymentDonation,
                      arguments: controller.program.value,
                    ),
                    backgroundColor: theme.primaryColor,
                    leadingIcon: HeroIcons.inboxStack,
                    label: 'Donasi Sekarang',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderSection extends GetView<ProgramDetailController> {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final program = controller.program.value ?? const ProgramEntity();
    final theme = Get.theme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(size(20), size(8), size(20), size(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(size(16)),
              child: Skeleton.replace(
                width: Get.width,
                height: size(230),
                child: AppImage(
                  imageUrl: program.bannerUrl ?? program.thumbnailUrl,
                  width: Get.width,
                  height: size(230),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: size(20)),
            if (program.fundType != null) ...[
              Skeleton.leaf(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size(10),
                    vertical: size(4),
                  ),
                  decoration: BoxDecoration(
                    color: theme.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(size(6)),
                  ),
                  child: Text(
                    program.fundType ?? '-',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size(8)),
            ],
            Text(
              program.name ?? '-',
              style: theme.textTheme.titleLarge?.copyWith(height: 1.3),
            ),
            SizedBox(height: size(16)),
            _DonaturPreview(program: program),
            SizedBox(height: size(16)),
            Text(
              program.description ?? '-',
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.5),
            ),
            if (program.documentation != null &&
                program.documentation!
                    .where((url) => url.isNotEmpty)
                    .isNotEmpty) ...[
              SizedBox(height: size(20)),
              _DocumentationSection(program: program),
            ],
            SizedBox(height: size(24)),
            _ProgressCard(
              program: program,
              percent: program.statistics?.percentTarget.toRawPercent() ?? 0,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressCard extends StatelessWidget {
  final ProgramEntity program;
  final double percent;

  const _ProgressCard({required this.program, required this.percent});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final now = DateTime.now();
    DateTime? endDate;
    if (program.endDate != null) {
      try {
        endDate = DateTime.parse(program.endDate!);
      } catch (_) {}
    }
    final daysLeft = endDate != null ? endDate.difference(now).inDays : 0;
    final timeLeftStr = daysLeft > 0 ? '$daysLeft Hari lagi' : 'Selesai';

    return Container(
      padding: EdgeInsets.all(size(16)),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(size(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Statistic Progress',
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (program.startDate != null &&
                        program.endDate != null) ...[
                      SizedBox(height: size(2)),
                      Text(
                        'Periode: ${program.startDate.toDateId()} - ${program.endDate.toDateId()}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Text(timeLeftStr, style: theme.textTheme.labelSmall),
            ],
          ),
          SizedBox(height: size(16)),
          Skeleton.replace(
            replacement: Bone(
              width: Get.width,
              height: size(15),
              borderRadius: BorderRadius.circular(size(16)),
            ),
            child: LinearPercentIndicator(
              percent: percent,
              lineHeight: size(10),
              progressColor: theme.primaryColor,
              barRadius: Radius.circular(size(10)),
              padding: EdgeInsets.only(right: size(10)),
              trailing: Text(
                percent.toPercent(fractionDigits: 0),
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: size(16)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${program.statistics?.fundsCollected.toRupiah()}",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(width: size(4)),
              Padding(
                padding: EdgeInsets.only(bottom: size(3)),
                child: Text('Terkumpul', style: theme.textTheme.labelSmall),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: size(2)),
                child: Skeleton.replace(
                  replacement: Bone(width: size(10), height: size(10)),
                  child: HeroIcon(
                    HeroIcons.plusCircle,
                    size: size(10),
                    style: HeroIconStyle.solid,
                    color: theme.textTheme.labelSmall!.color,
                  ),
                ),
              ),
              SizedBox(width: size(5)),
              Text(
                "${program.targetAmount ?? 0.toRupiah()}",
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DonaturPreview extends StatelessWidget {
  final ProgramEntity program;

  const _DonaturPreview({required this.program});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final avatars = program.lastDonaturAvatar ?? [];
    final displayAvatars = avatars.take(4).toList();
    final donaturCount = program.statistics?.donaturCount ?? 0;

    return Row(
      children: [
        if (displayAvatars.isNotEmpty)
          SizedBox(
            width: (displayAvatars.length * size(23)) + 12,
            height: size(35),
            child: Stack(
              children: List.generate(displayAvatars.length, (index) {
                return Positioned(
                  left: index * 20.0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Skeleton.leaf(
                      child: ClipOval(
                        child: AppImage(
                          imageUrl: displayAvatars[index],
                          width: size(30),
                          height: size(30),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        if (displayAvatars.isNotEmpty) SizedBox(width: size(12)),
        Text(
          '$donaturCount+ People Donated',
          style: theme.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _DocumentationSection extends StatelessWidget {
  final ProgramEntity program;

  const _DocumentationSection({required this.program});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final photos = program.documentation!
        .where((url) => url.isNotEmpty)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dokumentasi',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: size(12)),
        SizedBox(
          height: size(100),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            separatorBuilder: (_, _) => SizedBox(width: size(10)),
            itemBuilder: (context, index) {
              return Skeleton.leaf(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size(12)),
                  child: AppImage(
                    imageUrl: photos[index],
                    width: size(140),
                    height: size(100),
                    borderRadius: BorderRadius.circular(size(12)),
                    fit: BoxFit.cover,
                    errorIconSize: size(24),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _DonaturSliver extends GetView<ProgramDetailController> {
  const _DonaturSliver();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loadingWidget = CardStyle5(
      isLoading: true,
      image: const SizedBox(),
      title: '----------',
      subtitle: '--------------------',
      content: Bone(
        width: size(100),
        height: size(10),
        borderRadius: BorderRadius.circular(size(10)),
      ),
      margin: EdgeInsets.only(bottom: size(8)),
    );
    return Obx(() {
      if (controller.isLoadingDonatur.value) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size(20),
              vertical: size(20),
            ),
            child: Column(children: List.generate(4, (_) => loadingWidget)),
          ),
        );
      } else if (controller.donaturList.isEmpty &&
          !controller.isLoadingMoreDonatur.value) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size(24)),
            child: const AppEmptyState(
              title: 'Jadilah donatur pertama!',
              message: 'Belum ada donatur untuk program ini.',
            ),
          ),
        );
      } else {
        final itemCount =
            controller.donaturList.length +
            (controller.isLoadingMoreDonatur.value ? 1 : 0);

        return SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: size(20),
            vertical: size(20),
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (index >= controller.donaturList.length) {
                return loadingWidget;
              }
              final d = controller.donaturList[index];
              return CardStyle5.network(
                imageUrl: d.avatar ?? '',
                avatarSize: size(36),
                margin: EdgeInsets.only(bottom: size(8)),
                title: d.name ?? 'Anonim',
                subtitle: d.date.toDateId(),
                content: Text(
                  "${d.amount.toRupiah()}",
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }, childCount: itemCount),
          ),
        );
      }
    });
  }
}

class _DisbursementSliver extends GetView<ProgramDetailController> {
  const _DisbursementSliver();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoadingDisbursements.value) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size(20),
              vertical: size(20),
            ),
            child: Column(
              children: List.generate(
                5,
                (index) => DisbursementTimeLine(
                  isLast: index == 5,
                  isLoading: controller.isLoadingDisbursements.value,
                ),
              ),
            ),
          ),
        );
      } else if (controller.disbursementList.isEmpty) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size(24)),
            child: const AppEmptyState(
              title: 'Belum ada penyaluran',
              message: 'Belum ada penyaluran untuk program ini.',
            ),
          ),
        );
      } else {
        final itemCount =
            controller.disbursementList.length +
            (controller.isLoadingMoreDisbursements.value ? 1 : 0);

        return SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: size(20),
            vertical: size(20),
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (index >= controller.disbursementList.length) {
                return DisbursementTimeLine(
                  isLast: true,
                  isLoading: controller.isLoadingDisbursements.value,
                );
              }
              final item = controller.disbursementList[index];
              final isLast = index == controller.disbursementList.length - 1;
              return DisbursementTimeLine(
                item: item,
                isLoading: controller.isLoadingDisbursements.value,
                isLast: isLast && !controller.isLoadingMoreDisbursements.value,
                onTap: () => Get.toNamed('', arguments: item.id),
              );
            }, childCount: itemCount),
          ),
        );
      }
    });
  }
}

class _DistributionSummarySection extends StatelessWidget {
  final ProgramEntity program;

  const _DistributionSummarySection({required this.program});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final summary = program.distributionSummary;
    if (summary == null) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size(20), vertical: size(10)),
        child: CardStyle4(
          image: const SizedBox(),
          imageWidth: 0,
          imageHeight: size(70),
          title: "Ringakasan Dana",
          style: CardStyle4Theme.of(context).copyWith(
            gap: size(15),
            titleStyle: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          checkInLabel: "Sisa Dana",
          checkInDate: summary.remainingFunds.toRupiah(),
          checkOutLabel: "Tersalurkan",
          checkOutDate: summary.distributed.toRupiah(),
          showDivider: false,
          content: Row(
            spacing: size(15),
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  percent: summary.totalRemainingPercent.toRawPercent(),
                  lineHeight: size(10),
                  progressColor: theme.primaryColor,
                  barRadius: Radius.circular(size(10)),
                ),
              ),
              Expanded(
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: summary.totalDistributedPercent.toRawPercent(),
                  lineHeight: size(10),
                  progressColor: theme.primaryColor,
                  barRadius: Radius.circular(size(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ErrorView extends GetView<ProgramDetailController> {
  final String? errorMessage;
  const _ErrorView({this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AppErrorView.screen(
      title: errorMessage != null
          ? 'Terjadi Kesalahan'
          : 'Program tidak ditemukan',
      message:
          errorMessage ??
          'Program yang Anda cari tidak ditemukan atau sudah tidak tersedia.',
      actionButton: AppButton.secondary(
        onPressed: () => controller.loadProgramDetail(Get.arguments),
        leadingIcon: HeroIcons.arrowPath,
        label: 'Refresh',
        expand: false,
      ),
    );
  }
}
