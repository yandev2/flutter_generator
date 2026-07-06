import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/muzzaki_transaction_item_list_entity.dart';
import '../../../../core/const/transaction_status_constants.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/usecase/muzzaki/get_transaction_history_usecase.dart';

class RiwayatListMuzzakiController extends GetxController with TabLoadable {
  final GetTransactionHistoryUsecase getTransactionHistoryUsecase;

  RiwayatListMuzzakiController({required this.getTransactionHistoryUsecase});

  final isLoadingList = true.obs;
  final isLoadingMore = false.obs;
  final hasMore = true.obs;
  final allTransactions = <MuzzakiTransactionItemListEntity>[].obs;
  final tabIndex = 0.obs;
  final errorMessage = ''.obs;
  final statusFilters = TransactionStatusConstants.tabLabels;
  final scrollController = ScrollController();

  int _page = 1;
  String? _statusFilter;

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
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      if (!isLoadingMore.value && hasMore.value && !isLoadingList.value) {
        loadMore();
      }
    }
  }

  void _applyPagination({
    required int page,
    required bool append,
    required PaginatedListEntity<MuzzakiTransactionItemListEntity> result,
  }) {
    if (append) {
      allTransactions.addAll(result.items);
    } else {
      allTransactions.assignAll(result.items);
    }

    final pagination = result.pagination;
    hasMore.value =
        pagination.hasMore ??
        (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
  }

  Future<void> fetchInitial() async {
    try {
      _page = 1;
      hasMore.value = true;
      isLoadingList.value = true;
      errorMessage.value = '';
      allTransactions.clear();

      final result = await getTransactionHistoryUsecase(
        page: _page,
        status: _statusFilter,
      );
      _applyPagination(page: _page, append: false, result: result);
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          variant: AppToastVariant.danger,
          message: 'Gagal memuat riwayat: ${errorMessage.value}',
        );
      }
    } finally {
      isLoadingList.value = false;
    }
  }

  Future<void> loadMore() async {
    if (isLoadingMore.value || !hasMore.value) return;

    try {
      isLoadingMore.value = true;
      _page++;

      final result = await getTransactionHistoryUsecase(
        page: _page,
        status: _statusFilter,
      );
      _applyPagination(page: _page, append: true, result: result);
    } catch (e) {
      _page--;
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message:
              'Gagal memuat riwayat tambahan: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingMore.value = false;
    }
  }

  void changeTab(int index) {
    if (tabIndex.value == index) return;
    tabIndex.value = index;
    _statusFilter = TransactionStatusConstants.statusForTab(index);
    fetchInitial();
  }

  @override
  Future<void> refresh() => fetchInitial();
}
