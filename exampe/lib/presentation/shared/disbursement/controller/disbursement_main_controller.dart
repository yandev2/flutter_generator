import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';

class DisbursementMainController extends GetxController with TabLoadable {
  final GetDisbursementsUsecase getDisbursementsUsecase;

  DisbursementMainController({required this.getDisbursementsUsecase});

  final scrollController = ScrollController();
  final RxList<DisbursementItemListEntity> disbursementList = <DisbursementItemListEntity>[].obs;
  final RxBool isLoading = true.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool hasMore = true.obs;
  final RxString errorMessage = ''.obs;
  final RxString searchQuery = ''.obs;

  int _page = 1;
  int _fetchId = 0;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  Future<void> loadTabData() => fetchInitial();

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    if (!scrollController.hasClients) return;
    if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
      if (!isLoadingMore.value && hasMore.value && !isLoading.value) {
        loadMore();
      }
    }
  }

  void _applyPagination({
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
    hasMore.value =
        pagination.hasMore ?? (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
  }

  Future<void> fetchInitial() async {
    try {
      final currentFetchId = ++_fetchId;
      isLoading.value = true;
      errorMessage.value = '';
      _page = 1;
      hasMore.value = true;
      disbursementList.clear();

      final result = await getDisbursementsUsecase(page: _page);

      if (currentFetchId != _fetchId) return;

      _applyPagination(page: _page, append: false, result: result);
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadMore() async {
    if (isLoadingMore.value || !hasMore.value || isLoading.value) return;

    try {
      isLoadingMore.value = true;
      _page++;

      final result = await getDisbursementsUsecase(page: _page);
      _applyPagination(page: _page, append: true, result: result);
    } catch (e) {
      _page--;
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Gagal memuat data tambahan: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingMore.value = false;
    }
  }

  @override
  Future<void> refresh() => fetchInitial();
}
