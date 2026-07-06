import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_main.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/muzzaki_transaction_item_list_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/service/routes/route_name.dart';
import '../../../../core/const/transaction_status_constants.dart';
import '../../../../core/ui/card/card_style_5.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/segment/app_segment_control.dart';
import '../../../../core/ui/theme/app_segment_theme.dart';
import '../../../../core/ui/theme/card_style_5_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../theme/app_scale.dart';
import '../controller/riwayat_list_muzzaki_controller.dart';
import '../widget/status_config.dart';

class RiwayatListMuzzakiView extends GetView<RiwayatListMuzzakiController> {
  const RiwayatListMuzzakiView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: RefreshIndicator(
        onRefresh: controller.refresh,
        color: theme.primaryColor,
        child: CustomScrollView(
          controller: controller.scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            _AppbarSection(theme: theme, controller: controller),
            _ContentSection(controller: controller, theme: theme),
          ],
        ),
      ),
    );
  }
}

class _AppbarSection extends StatelessWidget {
  const _AppbarSection({required this.theme, required this.controller});

  final ThemeData theme;
  final RiwayatListMuzzakiController controller;

  @override
  Widget build(BuildContext context) {
    return AppbarMain(
      title: "Riwayat Transaksi",
      tabfilter: Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        height: size(70),
        child: Container(
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(size(20))),
          ),

          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: size(12),
              right: size(12),
              top: size(15),
              bottom: size(8),
            ),
            child: Obx(
              () => AppSegmentControl<int>(
                value: controller.tabIndex.value,
                onChanged: controller.changeTab,
                expand: false,
                style: AppSegmentTheme.of(context).copyWith(
                  trackPadding: size(8),
                  borderColor: Colors.transparent,
                  trackColor: Colors.transparent,
                  segmentRadius: size(20),
                  segmentPadding: EdgeInsets.symmetric(
                    horizontal: size(16),
                    vertical: size(7),
                  ),
                  unselectedForeground: theme.colorScheme.onSurface,
                  unselectedColor: theme.cardColor,
                  unselectedBorderColor: theme.dividerColor,
                ),
                options: List.generate(
                  controller.statusFilters.length,
                  (index) => AppSegmentOption(
                    value: index,
                    label: controller.statusFilters[index],
                    icon: TransactionStatusConstants.tabIcons[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection({required this.controller, required this.theme});

  final RiwayatListMuzzakiController controller;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final itemLoading = CardStyle5(
      isLoading: true,
      margin: EdgeInsets.only(bottom: size(12)),
      image: Container(
        width: size(44),
        height: size(44),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(size(12)),
        ),
      ),
      avatarSize: size(44),
      title: '----------------',
      subtitle: '----------',
      content: const Text('----------------'),
      actionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('------------'),
          SizedBox(height: size(6)),
          Container(
            width: size(50),
            height: size(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(size(20)),
            ),
          ),
        ],
      ),
    );

    return Obx(() {
      if (controller.isLoadingList.value) {
        return SliverPadding(
          padding: EdgeInsets.all(size(16)),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return itemLoading;
            }, childCount: 6),
          ),
        );
      }

      if (controller.errorMessage.value.isNotEmpty) {
        return SliverFillRemaining(
          child: AppEmptyState(
            title: 'Terjadi Kesalahan',
            message: controller.errorMessage.value,
            actionLabel: 'Refresh',
            onAction: () => controller.refresh(),
          ),
        );
      }

      final list = controller.allTransactions;
      final showLoadMore = controller.isLoadingMore.value;
      final itemCount = list.length + (showLoadMore ? 1 : 0);

      if (list.isEmpty && !showLoadMore) {
        return SliverFillRemaining(
          child: AppEmptyState(
            title: 'Belum ada transaksi',
            message: 'Mulai bayar zakat atau berdonasi!',
          ),
        );
      }

      return SliverPadding(
        padding: EdgeInsets.all(size(16)),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            if (index >= list.length) {
              return itemLoading;
            }
            return _TransactionCard(transaction: list[index], theme: theme);
          }, childCount: itemCount),
        ),
      );
    });
  }
}

class _TransactionCard extends StatelessWidget {
  final MuzzakiTransactionItemListEntity transaction;
  final ThemeData theme;

  const _TransactionCard({required this.transaction, required this.theme});

  @override
  Widget build(BuildContext context) {
    final status = transaction.status?.toLowerCase() ?? '';
    final statusConfig = getStatusConfig(status);

    return CardStyle5(
      style: CardStyle5Theme.of(context).copyWith(
        titleStyle: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      margin: EdgeInsets.only(bottom: size(12)),
      onTap: () {
        Get.toNamed(
          RouteName.muzzakiDetailTransaction,
          arguments: transaction.id,
        );
      },
      image: Container(
        width: size(44),
        height: size(44),
        decoration: BoxDecoration(
          color: statusConfig.color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(size(12)),
        ),
        child: Icon(
          transaction.isNatura == true
              ? Icons.inventory_2_rounded
              : Icons.account_balance_wallet_rounded,
          color: statusConfig.color,
          size: size(22),
        ),
      ),
      avatarSize: size(40),
      title: transaction.programName ?? 'Transaksi',
      subtitle: transaction.paymentMethod ?? '-',
      content: Text(
        transaction.createdAt.toDateTimeId(),
        style: theme.textTheme.labelSmall,
      ),
      actionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${transaction.isNatura == true ? 'Natura' : (transaction.amount ?? 0).toRupiah()}",
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.primaryColor,
            ),
          ),
          SizedBox(height: size(6)),
          Container(
            padding: EdgeInsets.all(size(4)),
            decoration: BoxDecoration(
              color: statusConfig.color.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: HeroIcon(
              statusConfig.icon,
              size: size(14),
              color: statusConfig.color,
              style: HeroIconStyle.solid,
            ),
          ),
        ],
      ),
    );
  }
}
