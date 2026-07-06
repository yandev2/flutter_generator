import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_detail_view.dart';
import '../../../../core/const/zakat_constants.dart';
import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_style_5.dart';
import '../../../../core/ui/image/app_image.dart';
import '../../../../core/ui/input/app_input.dart';
import '../../../../core/ui/input/app_input_currency.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../core/utils/style.dart';
import '../../../../domain/entity/response/zakat_calculate_response_entity.dart';
import '../../../../service/auth/auth_service.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../controller/zakat_calculate_controller.dart';

class ZakatCalculatorView extends GetView<ZakatCalculateController> {
  const ZakatCalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        controller: controller.scrollController,
        slivers: [
          AppbarDetailView(title: "Hitung Zakat", isBack: true),
          _NisabInfoSection(),
          _InputSection(),
          _ResultSection(),
          _ActionSection(),
        ],
      ),
    );
  }
}

class _NisabInfoSection extends GetView<ZakatCalculateController> {
  const _NisabInfoSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final zakatType = controller.zakatType;
    final commodity = zakatType.commodity;
    final variables = zakatType.variables;

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          _buildZakatInfoCard(theme, controller),
          SizedBox(height: size(16)),

          if (commodity != null && variables != null)
            Container(
              padding: EdgeInsets.all(size(16)),
              decoration: BoxDecoration(
                color: theme.primaryColor.withAlpha(15),
                borderRadius: BorderRadius.circular(size(14)),
                border: Border.all(color: theme.primaryColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HeroIcon(
                        HeroIcons.informationCircle,
                        color: theme.primaryColor,
                        size: size(18),
                      ),
                      SizedBox(width: size(8)),
                      Text(
                        'Informasi Nisab',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size(12)),
                  _nisabRow(theme, 'Komoditas', commodity.name ?? '-'),
                  _nisabRow(
                    theme,
                    'Harga per ${commodity.unit ?? "unit"}',
                    "${commodity.pricePerUnit.toRupiah()}",
                  ),
                  _nisabRow(
                    theme,
                    'Batas Nisab',
                    '${(commodity.nisabQuantity ?? 0).toStringAsFixed(0)} ${commodity.unit ?? "unit"}',
                  ),
                  if (variables.price != null &&
                      variables.nisabQty != null) ...[
                    Divider(height: size(20), color: theme.primaryColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nilai Nisab',
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: theme.primaryColor,
                          ),
                        ),
                        Text(
                          "${(variables.price! * variables.nisabQty!).toRupiah()}",
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size(4)),
                    Text(
                      '${(commodity.nisabQuantity ?? 0).toStringAsFixed(0)} ${commodity.unit ?? "unit"} × ${(commodity.pricePerUnit ?? 0).toRupiah()}',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.primaryColor.withAlpha(160),
                      ),
                    ),
                  ],
                  if (zakatType.zakatRate != null) ...[
                    SizedBox(height: size(8)),
                    _nisabRow(
                      theme,
                      'Tarif Zakat',
                      '${(zakatType.zakatRate! * 100).toStringAsFixed(1)}%',
                    ),
                  ],
                  if (zakatType.haulMonths != null) ...[
                    _nisabRow(theme, 'Haul', '${zakatType.haulMonths} bulan'),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildZakatInfoCard(
    ThemeData theme,
    ZakatCalculateController controller,
  ) {
    final iconUrl = controller.zakatType.iconUrl;
    final description = controller.zakatType.description ?? '';
    return CardStyle5(
      image: iconUrl != null && iconUrl.isNotEmpty
          ? AppImage(
              imageUrl: iconUrl,
              width: size(35),
              height: size(35),
              fit: BoxFit.contain,
            )
          : Image.asset(
              'assets/icon/kalkulator.png',
              width: size(35),
              height: size(35),
              fit: BoxFit.contain,
            ),
      title: controller.zakatType.name ?? 'Kalkulator Zakat',
      content: Text(
        description.isNotEmpty
            ? description
            : 'Zakat wajib dibayarkan sesuai ketentuan syariat.',
        style: theme.textTheme.labelMedium,
      ),
    );
  }

  Widget _nisabRow(ThemeData theme, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: size(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.primaryColor.withAlpha(180),
            ),
          ),
          Text(
            value,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _InputSection extends GetView<ZakatCalculateController> {
  const _InputSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: size(16), vertical: size(20)),
      sliver: SliverList.list(children: _buildInputFields()),
    );
  }

  List<Widget> _buildInputFields() {
    final widgets = <Widget>[];
    for (var i = 0; i < controller.fields.length; i++) {
      final field = controller.fields[i];
      final isCurrency = field.type == ZakatInputType.currency;
      widgets.add(
        isCurrency
            ? AppInputCurrency(
                controller: controller.inputControllers[field.key]!,
                label: field.label,
                hint: field.hint,
                helperText: field.unitSuffix != null
                    ? 'Dalam ${field.unitSuffix}'
                    : null,
                selectedCurrency: 'IDR',
                currencies: const ['IDR'],
                onChanged: (_) => controller.calculateZakat(),
              )
            : AppInput(
                controller: controller.inputControllers[field.key]!,
                label: field.label,
                hint: field.hint,
                helperText: field.unitSuffix != null
                    ? 'Dalam ${field.unitSuffix}'
                    : null,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                onChanged: (_) => controller.calculateZakat(),
              ),
      );
      if (i != controller.fields.length - 1) {
        widgets.add(SizedBox(height: size(16)));
      }
    }
    return widgets;
  }
}

class _ResultSection extends GetView<ZakatCalculateController> {
  const _ResultSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          Obx(() {
            if (controller.isCalculating.value) {
              return _buildCalculatingIndicator(theme);
            }
            final result = controller.calculateResult.value;
            if (result == null) return const SizedBox();
            return _buildCalculationResult(theme, result);
          }),
        ],
      ),
    );
  }

  Widget _buildCalculatingIndicator(ThemeData theme) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size(18),
              height: size(18),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: theme.primaryColor,
              ),
            ),
            SizedBox(width: size(8)),
            Text('Menghitung...', style: theme.textTheme.bodySmall),
          ],
        ),
      ),
    );
  }

  Widget _buildCalculationResult(
    ThemeData theme,
    ZakatCalculateResponseEntity result,
  ) {
    final belumWajib = result.isWajib != true;
    return Container(
      padding: EdgeInsets.all(size(20)),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(size(16)),
        boxShadow: [boxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              HeroIcon(
                belumWajib
                    ? HeroIcons.exclamationTriangle
                    : HeroIcons.checkCircle,
                color: belumWajib ? AppColors.amber : theme.primaryColor,
                size: size(20),
              ),
              SizedBox(width: size(8)),
              Text('Hasil Perhitungan', style: theme.textTheme.titleSmall),
            ],
          ),
          SizedBox(height: size(16)),
          _resultRow(theme, 'Nilai Aset', "${(result.asset ?? 0).toRupiah()}"),
          _resultRow(theme, 'Nisab', "${(result.nisabValue ?? 0).toRupiah()}"),
          Divider(
            height: size(24),
            color: theme.textTheme.titleLarge!.color!.withAlpha(30),
          ),
          if (belumWajib)
            Container(
              padding: EdgeInsets.all(size(12)),
              decoration: BoxDecoration(
                color: AppColors.amber.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(size(10)),
                border: Border.all(
                  color: AppColors.amber.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  HeroIcon(
                    HeroIcons.informationCircle,
                    color: AppColors.amber,
                    size: 18,
                  ),
                  SizedBox(width: size(8)),
                  Expanded(
                    child: Text(
                      result.message ??
                          'Harta Anda belum mencapai nisab. Belum wajib zakat.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Zakat yang Harus Dibayar',
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "${(result.zakatAmount ?? 0).toRupiah()}",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _resultRow(ThemeData theme, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: size(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: theme.textTheme.bodySmall),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionSection extends GetView<ZakatCalculateController> {
  const _ActionSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(size(16)),
      sliver: SliverList.list(
        children: [
          Obx(() {
            final result = controller.calculateResult.value;
            final user = Get.find<AuthService>().user.value?.user?.id;
            final canPay = result != null && (result.zakatAmount ?? 0) > 0;
            return AppButton(
              label: user == null ? 'Bayar Zakat (Login)' : 'Lanjut Pembayaran',
              leadingIcon: HeroIcons.arrowRightEndOnRectangle,
              onPressed: canPay ? controller.payment : null,
            );
          }),
          SizedBox(height: size(24)),
        ],
      ),
    );
  }
}
