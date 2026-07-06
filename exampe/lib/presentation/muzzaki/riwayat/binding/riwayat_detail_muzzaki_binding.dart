import 'package:get/get.dart';
import '../../../../domain/repository/muzzaki_repository.dart';
import '../../../../domain/usecase/muzzaki/detail_transaction_usecase.dart';
import '../controller/riwayat_detail_muzzaki_controller.dart';

class RiwayatDetailMuzzakiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatDetailMuzzakiController>(
      () => RiwayatDetailMuzzakiController(
        detailTransactionUsecase: DetailTransactionUsecase(
          Get.find<MuzzakiRepository>(),
        ),
      ),
    );
  }
}
