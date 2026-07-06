import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/donatur_entity.dart';
import '../../../../domain/entity/paginated_list_entity.dart';
import '../../../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../../../domain/entity/response/program_entity.dart';
import '../../../../domain/usecase/disbursement/get_disbursements_usecase.dart';
import '../../../../domain/usecase/program/detail_program_usecase.dart';
import '../../../../domain/usecase/program/donatur_usecase.dart';

class ProgramDetailController extends GetxController {
  final DetailProgramUsecase detailProgramUsecase;
  final DonaturUsecase donaturUsecase;
  final GetDisbursementsUsecase getDisbursementsUsecase;

  ProgramDetailController({
    required this.detailProgramUsecase,
    required this.donaturUsecase,
    required this.getDisbursementsUsecase,
  });

  // ─── TAB ──────────────────────────────────────────────────────────────
  static const int tabDeskripsi = 0;
  static const int tabPenyaluran = 1;
  static const int tabDonatur = 2;

  final RxBool isLoadingDetail = true.obs;
  final RxString errorMessage = ''.obs;
  final Rx<ProgramEntity?> program = Rx(null);
  final RxInt tabIndex = tabPenyaluran.obs;
  final scrollController = ScrollController();

  final RxList<DonaturEntity> donaturList = <DonaturEntity>[].obs;
  final RxBool isLoadingDonatur = false.obs;
  final RxBool isLoadingMoreDonatur = false.obs;
  final RxBool hasMoreDonatur = true.obs;
  int _donaturPage = 1;
  bool _donaturFetched = false;

  final RxList<DisbursementItemListEntity> disbursementList =
      <DisbursementItemListEntity>[].obs;
  final RxBool isLoadingDisbursements = false.obs;
  final RxBool isLoadingMoreDisbursements = false.obs;
  final RxBool hasMoreDisbursements = true.obs;
  int _disbursementPage = 1;
  bool _disbursementFetched = false;

  int? _programId;

  // ─── LIFECYCLE ────────────────────────────────────────────────────────
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
    _programId = Get.arguments as int;
    loadProgramDetail(_programId!);
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
      if (tabIndex.value == tabDonatur) {
        if (!isLoadingMoreDonatur.value &&
            hasMoreDonatur.value &&
            !isLoadingDonatur.value) {
          loadMoreDonatur();
        }
      } else if (tabIndex.value == tabPenyaluran) {
        if (!isLoadingMoreDisbursements.value &&
            hasMoreDisbursements.value &&
            !isLoadingDisbursements.value) {
          loadMoreDisbursements();
        }
      }
    }
  }

  // ─── FETCH METHODS ────────────────────────────────────────────────────
  Future<void> loadProgramDetail(int programId) async {
    try {
      isLoadingDetail.value = true;
      errorMessage.value = '';
      program.value = null;
      tabIndex.value = tabPenyaluran;
      _resetDonaturPagination();
      _resetDisbursementPagination();
      _donaturFetched = false;
      _disbursementFetched = false;

      program.value = await detailProgramUsecase(programId);
      _loadTabDataIfNeeded(tabIndex.value);
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoadingDetail.value = false;
    }
  }

  void _resetDonaturPagination() {
    _donaturPage = 1;
    hasMoreDonatur.value = true;
    donaturList.clear();
  }

  void _resetDisbursementPagination() {
    _disbursementPage = 1;
    hasMoreDisbursements.value = true;
    disbursementList.clear();
  }

  Future<void> fetchDonaturInitial(int programId) async {
    try {
      isLoadingDonatur.value = true;
      _donaturPage = 1;
      hasMoreDonatur.value = true;
      donaturList.clear();

      final result = await donaturUsecase(programId, page: _donaturPage);
      _applyDonaturPagination(
        page: _donaturPage,
        append: false,
        result: result,
      );
    } catch (_) {
      // silent
    } finally {
      isLoadingDonatur.value = false;
    }
  }

  Future<void> loadMoreDonatur() async {
    final programId = _programId ?? program.value?.id;
    if (programId == null ||
        isLoadingMoreDonatur.value ||
        !hasMoreDonatur.value) {
      return;
    }

    try {
      isLoadingMoreDonatur.value = true;
      _donaturPage++;

      final result = await donaturUsecase(programId, page: _donaturPage);
      _applyDonaturPagination(page: _donaturPage, append: true, result: result);
    } catch (e) {
      _donaturPage--;
    } finally {
      isLoadingMoreDonatur.value = false;
    }
  }

  Future<void> fetchDisbursementsInitial([int? programId]) async {
    final id = programId ?? _programId ?? program.value?.id;
    if (id == null) return;

    try {
      isLoadingDisbursements.value = true;
      _disbursementPage = 1;
      hasMoreDisbursements.value = true;
      disbursementList.clear();

      final result = await getDisbursementsUsecase(
        programId: id,
        page: _disbursementPage,
      );
      _applyDisbursementPagination(
        page: _disbursementPage,
        append: false,
        result: result,
      );
    } catch (e) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Gagal: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingDisbursements.value = false;
    }
  }

  Future<void> loadMoreDisbursements() async {
    final programId = _programId ?? program.value?.id;
    if (programId == null ||
        isLoadingMoreDisbursements.value ||
        !hasMoreDisbursements.value) {
      return;
    }

    try {
      isLoadingMoreDisbursements.value = true;
      _disbursementPage++;

      final result = await getDisbursementsUsecase(
        programId: programId,
        page: _disbursementPage,
      );
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
              'Gagal memuat data penyaluran tambahan: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoadingMoreDisbursements.value = false;
    }
  }

  void _applyDonaturPagination({
    required int page,
    required bool append,
    required PaginatedListEntity<DonaturEntity> result,
  }) {
    if (append) {
      donaturList.addAll(result.items);
    } else {
      donaturList.assignAll(result.items);
    }

    final pagination = result.pagination;
    hasMoreDonatur.value =
        pagination.hasMore ??
        (pagination.currentPage ?? page) < (pagination.totalPages ?? page);
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

  void changeTab(int index) {
    if (tabIndex.value == index) return;
    tabIndex.value = index;
    _loadTabDataIfNeeded(index);
  }

  void _loadTabDataIfNeeded(int index) {
    final programId = _programId ?? program.value?.id;
    if (programId == null) return;

    if (index == tabPenyaluran && !_disbursementFetched) {
      _disbursementFetched = true;
      fetchDisbursementsInitial(programId);
    } else if (index == tabDonatur && !_donaturFetched) {
      _donaturFetched = true;
      fetchDonaturInitial(programId);
    }
  }
}
