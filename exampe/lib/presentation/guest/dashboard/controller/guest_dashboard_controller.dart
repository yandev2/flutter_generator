import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../../../domain/entity/response/nisab_rate_entity.dart';
import '../../../../domain/entity/response/programs_item_list_entity.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/program/get_program_usecase.dart';
import '../../../../domain/usecase/zakat/get_nisab_usecase.dart';

class GuestDashboardController extends GetxController with TabLoadable {
  final GetProgramUsecase getProgramUsecase;
  final GetDisbursementsUsecase getDisbursementsUsecase;
  final GetNisabUsecase getNisabUsecase;

  GuestDashboardController({
    required this.getProgramUsecase,
    required this.getDisbursementsUsecase,
    required this.getNisabUsecase,
  });

  final RxBool isLoading = true.obs;
  final RxString errorMessage = ''.obs;
  final RxList<ProgramsItemListEntity> featuredPrograms = <ProgramsItemListEntity>[].obs;

  final RxBool isLoadingNisab = false.obs;
  final RxList<NisabRateEntity> nisabRates = <NisabRateEntity>[].obs;

  final scrollController = ScrollController();
  final RxList<DisbursementItemListEntity> disbursementList = <DisbursementItemListEntity>[].obs;
  final RxBool isLoadingDisbursements = false.obs;
  final RxBool isLoadingMoreDisbursements = false.obs;
  final RxBool hasMoreDisbursements = true.obs;

  int _disbursementPage = 1;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  Future<void> loadTabData() async {
    await Future.wait([fetchFeaturedPrograms(), fetchDisbursementsInitial(), fetchNisabRates()]);
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    if (!scrollController.hasClients) return;
    if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
      if (!isLoadingMoreDisbursements.value &&
          hasMoreDisbursements.value &&
          !isLoadingDisbursements.value) {
        loadMoreDisbursements();
      }
    }
  }

  Future<void> fetchFeaturedPrograms() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';
      final result = await getProgramUsecase(page: 1, isActive: true);
      featuredPrograms.value = result.items.take(5).toList();
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchNisabRates() async {
    try {
      isLoadingNisab.value = true;
      final result = await getNisabUsecase();
      nisabRates.assignAll(result);
    } catch (e) {
      debugPrint("Error fetching nisab: $e");
    } finally {
      isLoadingNisab.value = false;
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
        pagination.hasMore ?? (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
  }

  Future<void> fetchDisbursementsInitial() async {
    try {
      isLoadingDisbursements.value = true;
      _disbursementPage = 1;
      hasMoreDisbursements.value = true;
      disbursementList.clear();

      final result = await getDisbursementsUsecase(page: _disbursementPage);
      _applyDisbursementPagination(page: _disbursementPage, append: false, result: result);
    } catch (e) {
      AppToast(
        icon: HeroIcons.exclamationTriangle,
        message: e.toString().replaceAll('Exception: ', ''),
      );
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
      _applyDisbursementPagination(page: _disbursementPage, append: true, result: result);
    } catch (e) {
      _disbursementPage--;
      AppToast(
        icon: HeroIcons.exclamationTriangle,
        message: e.toString().replaceAll('Exception: ', ''),
      );
    } finally {
      isLoadingMoreDisbursements.value = false;
    }
  }

  @override
  Future<void> refresh() => loadIfNeeded(refresh: true);
}
