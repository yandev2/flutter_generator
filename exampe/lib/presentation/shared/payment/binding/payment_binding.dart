import 'package:get/get.dart';
import '../../../../domain/repository/payment_repository.dart';
import '../../../../domain/repository/zakat_repository.dart';
import '../../../../domain/usecase/payment/payment_usecase.dart';
import '../../../../domain/usecase/zakat/get_inventory_items_usecase.dart';
import '../controller/payment_donation_form_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentDonationFormController>(
      () => PaymentDonationFormController(
        paymentUsecase: PaymentUsecase(Get.find<PaymentRepository>()),
        getInventoryItemsUsecase: GetInventoryItemsUsecase(
          Get.find<ZakatRepository>(),
        ),
      ),
    );
  }
}
