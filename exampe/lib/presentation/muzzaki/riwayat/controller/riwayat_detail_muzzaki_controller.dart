import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/muzzaki_transaction_history_entity.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/usecase/muzzaki/detail_transaction_usecase.dart';

class RiwayatDetailMuzzakiController extends GetxController {
  final DetailTransactionUsecase detailTransactionUsecase;

  RiwayatDetailMuzzakiController({required this.detailTransactionUsecase});

  final RxBool isLoadingDetail = true.obs;
  final Rx<MuzzakiTransactionHistoryEntity?> transaction = Rx(null);
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    final transactionId = Get.arguments as int;
    loadDetail(transactionId);
  }

  // ─── FETCH METHODS ────────────────────────────────────────────────────
  Future<void> loadDetail(int id) async {
    try {
      isLoadingDetail.value = true;
      transaction.value = null;
      print('oke');
      transaction.value = await detailTransactionUsecase.call(id);
    } catch (e) {
      if (Get.context != null) {
        errorMessage.value =
            'Gagal memuat detail riwayat: ${e.toString().replaceAll('Exception: ', '')}';
        showAppToast(
          Get.context!,
          variant: AppToastVariant.danger,
          message:
              'Gagal memuat detail riwayat: ${e.toString().replaceAll('Exception: ', '')}',
        );
      }
    } finally {
      isLoadingDetail.value = false;
    }
  }

  Future<void> downloadBsz(String? url, String? bszNo) async {
    if (url == null || url.isEmpty) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'URL dokumen BSZ belum tersedia.',
          variant: AppToastVariant.warning,
        );
      }
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'URL dokumen BSZ tidak valid.',
          variant: AppToastVariant.danger,
        );
      }
      return;
    }

    try {
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched) {
        if (Get.context != null) {
          showAppToast(
            Get.context!,
            message: 'Tidak dapat membuka BSZ No. ${bszNo ?? "-"}.',
            variant: AppToastVariant.danger,
          );
        }
      }
    } catch (_) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Tidak dapat mengunduh BSZ No. ${bszNo ?? "-"}.',
          variant: AppToastVariant.danger,
        );
      }
    }
  }
}
