import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/service/routes/route_name.dart';
import '../../../../core/ui/card/card_style_3.dart';
import '../../../../theme/app_scale.dart';

class CalculatorOverview extends StatelessWidget {
  const CalculatorOverview({super.key, required this.isLoading});
  final RxBool isLoading;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CardStyle3(
        isLoading: isLoading.value,
        margin: EdgeInsets.symmetric(horizontal: size(16)),
        onTap: () => Get.toNamed(RouteName.zakat, arguments: 'load'),
        image: Image.asset(
          'assets/icon/kalkulator.png',
          width: size(60),
          height: size(70),
          fit: BoxFit.contain,
        ),
        imageWidth: size(60),
        imageHeight: size(60),
        category: 'Kalkulator',
        title: 'Hitung Zakat Anda',
        location: 'Mulai perhitungan zakat sekarang',
      ),
    );
  }
}
