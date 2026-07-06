import 'package:get/get.dart';
import '../../../../domain/repository/muzzaki_repository.dart';
import '../../../../domain/usecase/muzzaki/get_transaction_history_usecase.dart';
import '../controller/riwayat_list_muzzaki_controller.dart';

class RiwayatListMuzzakiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatListMuzzakiController>(
      () => RiwayatListMuzzakiController(
        getTransactionHistoryUsecase: GetTransactionHistoryUsecase(
          Get.find<MuzzakiRepository>(),
        ),
      ),
    );
  }
}
