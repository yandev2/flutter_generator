import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../../../domain/entity/response/muzakki_contribution_summary_entity.dart';
import '../../../../domain/entity/response/muzakki_dashboard_response_entity.dart';
import '../../../../domain/entity/response/programs_item_list_entity.dart';
import '../../../../domain/entity/response/user_data_entity.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/muzzaki/get_muzakki_dashboard_usecase.dart';

class DashboardMuzzakiController extends GetxController with TabLoadable {
  final GetMuzzakiDashboardUsecase getDashboardUsecase;
  final GetDisbursementsUsecase getDisbursementsUsecase;

  DashboardMuzzakiController({
    required this.getDashboardUsecase,
    required this.getDisbursementsUsecase,
  });

  // ─── STATE ────────────────────────────────────────────────────────────
  final RxBool isLoading = true.obs;
  final RxString errorMessage = ''.obs;

  final Rx<UserDataEntity?> user = Rx(null);
  final Rx<MuzakkiContributionSummaryEntity?> contributionSummary = Rx(null);
  final featuredPrograms = <ProgramsItemListEntity>[].obs;

  final scrollController = ScrollController();
  final disbursementList = <DisbursementItemListEntity>[].obs;
  final RxBool isLoadingDisbursements = false.obs;
  final RxBool isLoadingMoreDisbursements = false.obs;
  final RxBool hasMoreDisbursements = true.obs;

  int _disbursementPage = 1;

  // ─── LIFECYCLE ────────────────────────────────────────────────────────
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  Future<void> loadTabData() async {
    await Future.wait([fetchDashboard(), fetchDisbursementsInitial()]);
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    if (!scrollController.hasClients) return;
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      if (!isLoadingMoreDisbursements.value &&
          hasMoreDisbursements.value &&
          !isLoadingDisbursements.value) {
        loadMoreDisbursements();
      }
    }
  }

  // ─── FETCH METHODS ────────────────────────────────────────────────────
  Future<void> fetchDashboard() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final MuzakkiDashboardResponseEntity result = await getDashboardUsecase();

      user.value = result.user;
      contributionSummary.value = result.contributionSummary;
      featuredPrograms.value = result.featuredPrograms ?? [];
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoading.value = false;
    }
  }

  void _applyDisbursementPagination({
    required int page,
    required bool append,
    required PaginatedListEntity<DisbursementItemListEntity> result,
  }) {
    if (append) {
      disbursementList.addAll(result.items);
    } else {
      disbursementList.assignAll(result.items);
    }

    final pagination = result.pagination;
    hasMoreDisbursements.value =
        pagination.hasMore ??
        (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
  }

  Future<void> fetchDisbursementsInitial() async {
    try {
      isLoadingDisbursements.value = true;
      _disbursementPage = 1;
      hasMoreDisbursements.value = true;
      disbursementList.clear();

      final result = await getDisbursementsUsecase(page: _disbursementPage);
      _applyDisbursementPagination(
        page: _disbursementPage,
        append: false,
        result: result,
      );
    } catch (e) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message:
              'Gagal memuat penyaluran: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingDisbursements.value = false;
    }
  }

  Future<void> loadMoreDisbursements() async {
    if (isLoadingMoreDisbursements.value || !hasMoreDisbursements.value) return;

    try {
      isLoadingMoreDisbursements.value = true;
      _disbursementPage++;

      final result = await getDisbursementsUsecase(page: _disbursementPage);
      _applyDisbursementPagination(
        page: _disbursementPage,
        append: true,
        result: result,
      );
    } catch (e) {
      _disbursementPage--;
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message:
              'Gagal memuat penyaluran tambahan: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingMoreDisbursements.value = false;
    }
  }

  @override
  Future<void> refresh() => loadIfNeeded(refresh: true);
}
