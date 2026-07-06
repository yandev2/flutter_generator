import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/auth/binding/login_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/auth/view/login_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/auth/view/register_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/guest/navigation/binding/navigation_guest_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/guest/navigation/view/guest_navigation_page.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/main_screen/binding/introduction_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/main_screen/introduction_screen.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/main_screen/splash_screen.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/muzzaki/navigation/binding/navigation_muzzaki_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/muzzaki/navigation/view/navigation_muzzaki_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/muzzaki/riwayat/binding/riwayat_detail_muzzaki_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/muzzaki/riwayat/view/riwayat_detail_muzzaki_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/disbursement/binding/disbursement_detail_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/disbursement/view/disbursement_detail_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/payment/view/payment_donation_form_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/program/binding/program_detail_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/program/view/program_detail_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/binding/zakat_calculate_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/binding/zakat_main_binding.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/view/zakat_calculator_view.dart';
import 'package:simzakat_baznas_lubuklinggau/presentation/shared/zakat/view/zakat_main_view.dart';

import '../../presentation/auth/binding/register_binding.dart';
import '../../presentation/shared/payment/binding/payment_binding.dart';
import 'route_name.dart';

class RouteApp {
  static final route = <GetPage>[
    GetPage(
      name: RouteName.main,
      page: () => SplashScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: RouteName.intro,
      page: () => IntroductionScreen(),
      transition: Transition.fade,
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginView(),
      transition: Transition.fade,
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegisterView(),
      transition: Transition.fade,
      binding: RegisterBinding(),
    ),

    GetPage(
      name: RouteName.guest,
      page: () => const GuestNavigationPage(),
      binding: GuestNavigationBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.muzzaki,
      page: () => const NavigationMuzzakiView(),
      binding: NavigationMuzzakiBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.programDetail,
      page: () => const ProgramDetailView(),
      binding: ProgramDetailBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.disbursementDetail,
      page: () => const DisbursementDetailView(),
      binding: DisbursementDetailBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.zakat,
      page: () => const ZakatMainView(),
      binding: ZakatMainBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.zakatCalculate,
      page: () => const ZakatCalculatorView(),
      binding: ZakatCalculateBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.paymentDonation,
      page: () => const PaymentDonationFormView(),
      binding: PaymentBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: RouteName.muzzakiDetailTransaction,
      page: () => const RiwayatDetailMuzzakiView(),
      binding: RiwayatDetailMuzzakiBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
