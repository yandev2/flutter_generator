import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/guest/dashboard/view/guest_dashboard_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/program/view/program_main.dart';
import '../../../../core/mixin/lazy_tab_navigation_mixin.dart';
import '../../../shared/disbursement/controller/disbursement_main_controller.dart';
import '../../../shared/disbursement/view/disbursement_main_view.dart';
import '../../../shared/program/controller/program_main_controller.dart';
import '../../dashboard/controller/guest_dashboard_controller.dart';

class GuestNavigationController extends GetxController with LazyTabNavigation {
  @override
  int get tabCount => 3;

  @override
  Future<void> loadTabController(int index, {bool refresh = false}) async {
    switch (index) {
      case 0:
        if (Get.isRegistered<GuestDashboardController>()) {
          await Get.find<GuestDashboardController>().loadIfNeeded(refresh: refresh);
        }
      case 1:
        if (Get.isRegistered<ProgramMainController>()) {
          await Get.find<ProgramMainController>().loadIfNeeded(refresh: refresh);
        }
      case 2:
        if (Get.isRegistered<DisbursementMainController>()) {
          await Get.find<DisbursementMainController>().loadIfNeeded(refresh: refresh);
        }
    }
  }

  List<Widget> tabWidgets = [GuestDashboardView(), ProgramMain(), DisbursementMainView()];
}
