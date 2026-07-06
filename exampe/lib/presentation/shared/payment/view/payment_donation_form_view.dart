import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../core/shared/appbar_detail_view.dart';
import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_style_1.dart';
import '../../../../core/ui/card/card_style_5.dart';
import '../../../../core/ui/empty/app_empty_state.dart';
import '../../../../core/ui/input/app_input.dart';
import '../../../../core/ui/input/app_input_currency.dart';
import '../../../../core/ui/input/app_input_date.dart';
import '../../../../core/ui/segment/app_segment_control.dart';
import '../../../../core/ui/switch/app_switch.dart';
import '../../../../core/ui/theme/app_button_theme.dart';
import '../../../../core/ui/theme/app_segment_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../domain/entity/response/inventory_item_entity.dart';
import '../../../../theme/app_scale.dart';
import '../controller/payment_donation_form_controller.dart';
import '../widget/inventory_item_tile.dart';
import '../widget/loading_overlay.dart';
import '../widget/quick_amount_chip.dart';

class PaymentDonationFormView extends GetView<PaymentDonationFormController> {
  const PaymentDonationFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              AppbarDetailView(title: "Pembayaran", isBack: true),
              _HeaderSection(),
              _BodySection(),
              _ProofSection(),
            ],
          ),

          Obx(
            () => controller.isSubmitting.value
                ? const LoadingOverlay()
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class _HeaderSection extends GetView<PaymentDonationFormController> {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final program = controller.program;
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          CardStyle1.network(
            imageUrl: "${program.bannerUrl}",
            title: program.name ?? 'Program Donasi',
            edition: program.targetAmount != null
                ? 'Target ${program.targetAmount!.toRupiah()}'
                : null,
            footer: Text(
              "Setiap kebaikan kecil adalah secercah harapan bagi mereka yang membutuhkan. Mari ulurkan tangan dan bagikan kasih sayang. Kontribusi Anda, sekecil apa pun, akan sangat bermanfaat untuk mengubah masa depan mereka menjadi lebih baik.",
              style: theme.textTheme.labelMedium,
            ),
          ),

          SizedBox(height: size(20)),
          Text('Jenis Donasi', style: theme.textTheme.titleSmall),

          SizedBox(height: size(8)),
          Obx(
            () => AppSegmentControl<String>(
              value: controller.paymentType.value,
              onChanged: controller.setDonationType,
              style: AppSegmentTheme.of(
                Get.context as BuildContext,
              ).copyWith(borderColor: Colors.transparent, trackPadding: 0),
              options: const [
                AppSegmentOption(
                  value: 'Cash',
                  label: 'Cash',
                  icon: HeroIcons.banknotes,
                ),
                AppSegmentOption(
                  value: 'Natura',
                  label: 'Natura (Barang)',
                  icon: HeroIcons.archiveBox,
                ),
              ],
            ),
          ),

          SizedBox(height: size(20)),
          Obx(
            () => controller.paymentType.value == 'Cash'
                ? _BuildCashForm()
                : _BuildNaturaForm(),
          ),
        ],
      ),
    );
  }
}

class _BuildNaturaForm extends GetView<PaymentDonationFormController> {
  const _BuildNaturaForm();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pilih Barang', style: theme.textTheme.titleSmall),
            AppButton(
              label: 'Tambah Barang',
              variant: AppButtonVariant.ghost,
              expand: false,
              leadingIcon: HeroIcons.plusCircle,
              onPressed: () => _showInventoryBottomSheet(),
            ),
          ],
        ),

        SizedBox(height: size(8)),
        Obx(() {
          if (controller.selectedNaturaItems.isEmpty) {
            return AppEmptyState(
              title: 'Belum ada barang',
              message: 'Pilih barang donasi natura dari inventaris.',
              actionLabel: 'Pilih Barang',
              onAction: _showInventoryBottomSheet,
            );
          }
          return Column(
            children: controller.selectedNaturaItems.map((item) {
              return CardStyle5(
                margin: EdgeInsets.only(bottom: size(8)),
                image: Icon(
                  Icons.inventory_2_rounded,
                  color: theme.primaryColor,
                ),
                title: item.itemName ?? '-',
                subtitle:
                    '${item.qty} unit — ${item.lineValue?.toRupiah() ?? '-'}',
                actionIcon: HeroIcons.trash,
                onAction: () =>
                    controller.removeNaturaItem(item.inventoryItemId!),
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}

class _BuildCashForm extends GetView<PaymentDonationFormController> {
  const _BuildCashForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInputCurrency(
          controller: controller.amountController,
          label: 'Nominal Donasi',
          hint: '5.0000',
          selectedCurrency: 'IDR',
          currencies: const ['IDR'],
        ),
        SizedBox(height: size(12)),
        QuickAmountChip(
          amounts: const [10000, 25000, 50000, 100000],
          onSelected: (amount) {
            controller.amountController.text = "${amount.toRupiah()}"
                .replaceAll('Rp ', '');
          },
        ),
      ],
    );
  }
}

class _BodySection extends GetView<PaymentDonationFormController> {
  const _BodySection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Obx(
            () => AppSwitch(
              value: controller.isHambaAllah.value,
              onChanged: controller.onHambaAllahChanged,
              title: 'Donasi sebagai Hamba Allah',
              description:
                  'Aktifkan opsi ini jika Anda ingin berdonasi secara anonim tanpa menampilkan identitas Anda.',
            ),
          ),
          Obx(() {
            if (!controller.isHambaAllah.value) {
              return const SizedBox.shrink();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size(16)),
                AppInput(
                  controller: controller.anonymousNameController,
                  label: 'Nama Anonim (Opsional)',
                  hint: 'Contoh: Hamba Allah',
                ),
                SizedBox(height: size(10)),
                AppInput(
                  controller: controller.anonymousPhoneController,
                  label: 'Nomor Telepon (Opsional)',
                  hint: 'Contoh: 081234567890',
                  keyboardType: TextInputType.phone,
                ),
              ],
            );
          }),

          SizedBox(height: size(20)),
          Text('Penjemputan Donasi', style: Get.textTheme.titleSmall),

          SizedBox(height: size(8)),
          Obx(
            () => AppSegmentControl<bool>(
              value: controller.isPickupRequested.value,
              onChanged: controller.setPickupRequested,
              style: AppSegmentTheme.of(
                Get.context as BuildContext,
              ).copyWith(borderColor: Colors.transparent, trackPadding: 0),
              options: const [
                AppSegmentOption(value: false, label: 'Tidak perlu dijemput'),
                AppSegmentOption(value: true, label: 'Minta dijemput'),
              ],
            ),
          ),

          Obx(() {
            if (!controller.isPickupRequested.value) {
              return const SizedBox.shrink();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size(16)),
                Text('Detail Penjemputan', style: Get.textTheme.labelLarge),

                SizedBox(height: size(12)),
                AppButton.secondary(
                  label: 'Gunakan Lokasi Saat Ini',
                  leadingIcon: HeroIcons.mapPin,
                  isLoading: controller.isCapturingLocation.value,
                  onPressed: controller.capturePickupLocation,
                ),
                SizedBox(height: size(10)),
                AppInput(
                  controller: controller.pickupAddressController,
                  label: 'Alamat Penjemputan',
                  hint: 'Jl. ... No. ..., Kota',
                  maxLines: 3,
                ),

                SizedBox(height: size(10)),
                Row(
                  children: [
                    Expanded(
                      child: AppInput(
                        controller: controller.pickupLatitudeController,
                        label: 'Latitude',
                        hint: '-6.2088',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: true,
                        ),
                      ),
                    ),

                    SizedBox(width: size(10)),
                    Expanded(
                      child: AppInput(
                        controller: controller.pickupLongitudeController,
                        label: 'Longitude',
                        hint: '106.8456',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: true,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size(10)),
                AppInputDate(
                  value: controller.pickupScheduledDate.value,
                  onChanged: (d) => controller.pickupScheduledDate.value = d,
                  label: 'Tanggal Penjemputan',
                  firstDate: DateTime.now(),
                ),
                SizedBox(height: size(10)),
                AppInput(
                  controller: controller.pickupTimeNoteController,
                  label: 'Preferensi Waktu',
                  hint: "Contoh: Pagi hari / Ba'da Ashar",
                ),
                SizedBox(height: size(10)),
                AppInput(
                  controller: controller.pickupNotesController,
                  label: 'Catatan',
                  hint: 'Contoh: Ambil di pos satpam',
                  maxLines: 2,
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class _ProofSection extends GetView<PaymentDonationFormController> {
  const _ProofSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Obx(() {
            final isTransfer =
                !controller.isPickupRequested.value &&
                controller.paymentType.value == 'Cash';

            if (!isTransfer) return const SizedBox.shrink();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bukti Transfer (Opsional)',
                  style: Get.theme.textTheme.titleSmall,
                ),
                SizedBox(height: size(8)),
                OutlinedButton.icon(
                  onPressed: controller.pickProofFile,
                  icon: const Icon(Icons.camera_alt_outlined),
                  label: const Text('Pilih Foto Bukti Transfer'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                ),
                if (controller.proofFilePath.value != null) ...[
                  SizedBox(height: size(12)),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(size(12)),
                        child: Image.file(
                          File(controller.proofFilePath.value!),
                          width: double.infinity,
                          height: size(200),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: size(8),
                        right: size(8),
                        child: GestureDetector(
                          onTap: () => controller.proofFilePath.value = null,
                          child: Container(
                            padding: EdgeInsets.all(size(6)),
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: const HeroIcon(
                              HeroIcons.xMark,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            );
          }),

          SizedBox(height: size(28)),
          Obx(
            () => AppButton.primary(
              label: 'Kirim Donasi',
              leadingIcon: HeroIcons.heart,
              isLoading: controller.isSubmitting.value,
              onPressed: controller.isSubmitting.value
                  ? null
                  : controller.submitPayment,
            ),
          ),
          SizedBox(height: size(20)),
        ],
      ),
    );
  }
}

void _showInventoryBottomSheet() {
  final controller = Get.find<PaymentDonationFormController>();
  Get.bottomSheet(
    Container(
      height: Get.height * 0.75,
      padding: EdgeInsets.all(size(20)),
      decoration: BoxDecoration(
        color: Theme.of(Get.context!).scaffoldBackgroundColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(size(24))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pilih Barang Donasi', style: Get.textTheme.titleMedium),
              AppButton(
                label: 'Tutup',
                variant: AppButtonVariant.ghost,
                expand: false,
                onPressed: Get.back,
              ),
            ],
          ),
          SizedBox(height: size(12)),
          Expanded(
            child: Obx(() {
              if (controller.isLoadingInventory.value) {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, _) => InventoryItemTile(
                    isLoading: controller.isLoadingInventory,
                    item: InventoryItemEntity(),
                    theme: Get.theme,
                    onAdd: (qty, lineValue) {},
                  ),
                );
              }
              return ListView.builder(
                itemCount: controller.inventoryItems.length,
                itemBuilder: (context, index) {
                  final item = controller.inventoryItems[index];
                  return InventoryItemTile(
                    item: item,
                    theme: Get.theme,
                    onAdd: (qty, lineValue) {
                      controller.addOrUpdateNaturaItem(
                        item: item,
                        qty: qty,
                        lineValue: lineValue,
                      );
                      Get.back();
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),
    ),
    isScrollControlled: true,
  );
}
