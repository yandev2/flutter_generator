import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/program/controller/program_main_controller.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/controller/zakat_main_controller.dart';
import '../../../../core/mixin/lazy_tab_navigation_mixin.dart';
import '../../dashboard/controller/dashboard_muzzaki_controller.dart';
import '../../profile/controller/profile_muzzaki_controller.dart';
import '../../riwayat/controller/riwayat_list_muzzaki_controller.dart';

class NavigationMuzzakiController extends GetxController
    with LazyTabNavigation {
  @override
  int get tabCount => 5;

  @override
  Future<void> loadTabController(int index, {bool refresh = false}) async {
    switch (index) {
      case 0:
        if (Get.isRegistered<DashboardMuzzakiController>()) {
          await Get.find<DashboardMuzzakiController>().loadIfNeeded(
            refresh: refresh,
          );
        }
      case 1:
        if (Get.isRegistered<ZakatMainController>()) {
          await Get.find<ZakatMainController>().loadIfNeeded(refresh: refresh);
        }
      case 2:
        if (Get.isRegistered<ProgramMainController>()) {
          await Get.find<ProgramMainController>().loadIfNeeded(
            refresh: refresh,
          );
        }
      case 3:
        if (Get.isRegistered<RiwayatListMuzzakiController>()) {
          await Get.find<RiwayatListMuzzakiController>().loadIfNeeded(
            refresh: refresh,
          );
        }
      case 4:
        if (Get.isRegistered<ProfileMuzzakiController>()) {
          await Get.find<ProfileMuzzakiController>().loadIfNeeded(
            refresh: refresh,
          );
        }
    }
  }
}
