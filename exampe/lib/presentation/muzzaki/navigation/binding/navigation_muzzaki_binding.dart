import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/binding/zakat_main_binding.dart';
import '../../../shared/program/binding/program_main_binding.dart';
import '../../dashboard/binding/dashboard_muzzaki_binding.dart';
import '../../profile/binding/profile_muzzaki_binding.dart';
import '../../riwayat/binding/riwayat_list_muzzaki_binding.dart';
import '../controller/navigation_muzzaki_controller.dart';

class NavigationMuzzakiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationMuzzakiController>(
      () => NavigationMuzzakiController(),
    );
    DashboardMuzzakiBinding().dependencies();
    ZakatMainBinding().dependencies();
    ProgramMainBinding().dependencies();
    RiwayatListMuzzakiBinding().dependencies();
    ProfileMuzzakiBinding().dependencies();
  }
}
