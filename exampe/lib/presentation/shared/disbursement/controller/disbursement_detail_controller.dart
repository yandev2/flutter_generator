import 'package:get/get.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../domain/entity/response/disbursement_entity.dart';
import '../../../../domain/usecase/disbursement/detail_disbursement_usecase.dart';

class DisbursementDetailController extends GetxController {
  final DetailDisbursementUsecase detailDisbursementUsecase;

  DisbursementDetailController({required this.detailDisbursementUsecase});

  final RxBool isLoading = true.obs;
  final Rx<DisbursementEntity?> disbursement = Rx(null);

  @override
  void onInit() {
    super.onInit();
    final disbursementId = Get.arguments as int;
    loadDetail(disbursementId);
  }

  Future<void> loadDetail(int id) async {
    try {
      isLoading.value = true;
      disbursement.value = null;
      disbursement.value = await detailDisbursementUsecase.call(id);
    } catch (e) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Gagal: ${e.toString().replaceAll('Exception: ', '')}',
          variant: AppToastVariant.danger,
        );
      }
    } finally {
      isLoading.value = false;
    }
  }
}
