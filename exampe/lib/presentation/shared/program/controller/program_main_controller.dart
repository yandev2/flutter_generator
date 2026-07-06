import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/entity/response/programs_item_list_entity.dart';
import '../../../../domain/usecase/program/get_program_usecase.dart';

class ProgramMainController extends GetxController with TabLoadable {
  final GetProgramUsecase getProgramUsecase;

  ProgramMainController({required this.getProgramUsecase});

  final RxBool isLoadingList = true.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool hasMore = true.obs;
  final RxString errorMessage = ''.obs;
  final RxList<ProgramsItemListEntity> programs = <ProgramsItemListEntity>[].obs;
  final RxString searchQuery = ''.obs;
  final scrollController = ScrollController();

  int _page = 1;
  int _fetchId = 0;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
    debounce(
      searchQuery,
      (_) => fetchInitial(search: searchQuery.value.isNotEmpty ? searchQuery.value : null),
      time: const Duration(milliseconds: 500),
    );
  }

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
      if (!isLoadingMore.value && hasMore.value && !isLoadingList.value) {
        loadMore();
      }
    }
  }

  void _applyPagination({
    required int page,
    required bool append,
    required PaginatedListEntity<ProgramsItemListEntity> result,
  }) {
    if (append) {
      programs.addAll(result.items);
    } else {
      programs.assignAll(result.items);
    }

    final pagination = result.pagination;
    hasMore.value =
        pagination.hasMore ?? (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
  }

  Future<void> fetchInitial({String? search}) async {
    try {
      final currentFetchId = ++_fetchId;
      _page = 1;
      hasMore.value = true;
      isLoadingList.value = true;
      errorMessage.value = '';
      programs.clear();

      if (search != null) {
        searchQuery.value = search;
      }

      final result = await getProgramUsecase(
        search: searchQuery.value.isNotEmpty ? searchQuery.value : null,
        page: _page,
      );

      if (currentFetchId != _fetchId) return;

      _applyPagination(page: _page, append: false, result: result);
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoadingList.value = false;
    }
  }

  Future<void> loadMore() async {
    if (isLoadingMore.value || !hasMore.value || isLoadingList.value) return;

    try {
      isLoadingMore.value = true;
      _page++;

      final result = await getProgramUsecase(
        search: searchQuery.value.isNotEmpty ? searchQuery.value : null,
        page: _page,
      );
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

  void onSearchChanged(String value) {
    searchQuery.value = value;
    fetchInitial(search: value.isNotEmpty ? value : null);
  }

  @override
  Future<void> refresh() =>
      fetchInitial(search: searchQuery.value.isNotEmpty ? searchQuery.value : null);
}
