import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/shared/appbar_main.dart';
import '../../../../core/ui/card/card_style_1.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../service/routes/route_name.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../controller/program_main_controller.dart';

class ProgramMain extends StatelessWidget {
  const ProgramMain({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProgramMainController>();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => controller.refresh(),
        child: CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            _AppbarSection(controller: controller),
            _ContentSection(controller: controller),
          ],
        ),
      ),
    );
  }
}

class _AppbarSection extends StatelessWidget {
  const _AppbarSection({required this.controller});

  final ProgramMainController controller;

  @override
  Widget build(BuildContext context) {
    return AppbarMain(
      title: 'Program / campaign',
      isSearch: controller.searchQuery,
      onReset: () {
        controller.searchQuery.value = '';
      },
      onSearch: (v) {
        controller.searchQuery.value = v;
      },
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection({required this.controller});

  final ProgramMainController controller;

  @override
  Widget build(BuildContext context) {
    final loadingItem = CardStyle1.network(
      isLoading: true,
      imageUrl: "-",
      imageHeight: size(100),
      width: Get.width,
      title: '---------------------',
      edition: '----------------------',
      avatarUrls: const ['-', '-'],
      price: "-----------------",
      timeLabel: "--------------------------",
      content: Bone(
        width: Get.width,
        height: size(18),
        borderRadius: BorderRadius.circular(size(10)),
      ),
    );

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: size(16), vertical: size(20)),
      sliver: Obx(() {
        if (controller.isLoadingList.value) {
          return SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: size(15),
              crossAxisSpacing: size(15),
              mainAxisExtent: size(270),
            ),
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

        if (controller.programs.isEmpty) {
          return SliverFillRemaining(
            child: AppEmptyState(
              title: 'Belum ada program',
              message: 'Tidak ada program donasi yang tersedia saat ini.',
            ),
          );
        }

        return SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: size(15),
            crossAxisSpacing: size(15),
            mainAxisExtent: size(270),
          ),
          itemCount: controller.programs.length + (controller.isLoadingMore.value ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= controller.programs.length) {
              return loadingItem;
            }

            final program = controller.programs[index];
            final percent = ((program.percentTarget ?? 0) / 100).clamp(0.0, 1.0);
            return RepaintBoundary(
              child: CardStyle1.network(
                imageUrl: "${program.bannerUrl}",
                imageHeight: size(100),
                onTap: () => Get.toNamed(RouteName.programDetail, arguments: program.id),
                width: Get.width,
                title: program.name ?? '-',
                edition: program.isActive == true ? 'Berjalan' : 'Berakhir',
                avatarUrls: program.donatur,
                price: "Target ${program.targetAmount.toRupiah()}",
                timeLabel: "Donasi Sekarang!",
                content: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: LinearProgressIndicator(
                    value: percent,
                    minHeight: size(7),
                    color: Get.theme.primaryColor,
                    backgroundColor: Get.theme.primaryColor.withValues(alpha: 0.2),
                  ),
                ),
                timeLeading: HeroIcon(HeroIcons.sparkles, color: AppColors.blue),
              ),
            );
          },
        );
      }),
    );
  }
}
