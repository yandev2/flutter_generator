import 'package:get/get.dart';
import '../../../../domain/entity/mustahik_entity.dart';

class MustahikDetailSurveyorController extends GetxController {
  late final MustahikEntity mustahik;

  @override
  void onInit() {
    super.onInit();
    mustahik = Get.arguments as MustahikEntity;
  }

  String get formattedAddress {
    final parts = [
      mustahik.address,
      if (mustahik.rt != null) 'RT ${mustahik.rt}',
      if (mustahik.rw != null) 'RW ${mustahik.rw}',
      mustahik.village,
      mustahik.district,
      mustahik.city,
      mustahik.province,
    ].where((e) => e != null && e.toString().isNotEmpty).join(', ');
    return parts.isEmpty ? '-' : parts;
  }
}
