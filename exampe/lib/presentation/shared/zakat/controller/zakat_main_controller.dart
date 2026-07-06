import 'package:get/get.dart';
import '../../../../core/mixin/tab_loadable_mixin.dart';
import '../../../../domain/entity/response/zakat_type_entity.dart';
import '../../../../domain/usecase/zakat/get_zakat_type_usecase.dart';

class ZakatMainController extends GetxController with TabLoadable {
  final GetZakatTypeUsecase getZakatTypeUsecase;

  ZakatMainController({required this.getZakatTypeUsecase});

  final RxBool isLoadingTypes = true.obs;
  final RxList<ZakatTypeEntity> zakatTypes = <ZakatTypeEntity>[].obs;
  final RxBool isLoadingNisab = false.obs;
  final RxString errorMessage = ''.obs;

  @override
  void onReady() {
    if (Get.arguments == 'load') {
      loadTabData();
    }

    super.onReady();
  }

  @override
  Future<void> loadTabData() async {
    await Future.wait([fetchZakatTypes()]);
  }

  Future<void> fetchZakatTypes() async {
    try {
      isLoadingTypes.value = true;
      zakatTypes.value = await getZakatTypeUsecase();
    } catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
    } finally {
      isLoadingTypes.value = false;
    }
  }
}
