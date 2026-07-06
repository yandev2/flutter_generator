import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simzakat_baznas_lubuklinggau/core/ui/toast/app_toast.dart';
import 'package:simzakat_baznas_lubuklinggau/service/auth/auth_service.dart';

import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../domain/entity/natura_item_entity.dart';
import '../../../../domain/entity/pickup_details_entity.dart';
import '../../../../domain/entity/request/payment_request_entity.dart';
import '../../../../domain/entity/response/inventory_item_entity.dart';
import '../../../../domain/entity/response/payment_response_entity.dart';
import '../../../../domain/entity/response/program_entity.dart';
import '../../../../domain/usecase/payment/payment_usecase.dart';
import '../../../../domain/usecase/zakat/get_inventory_items_usecase.dart';
import '../../../../service/geolocator/geolocator_service.dart';
import '../../../../theme/theme.dart';
import '../widget/payment_instruction_dialog.dart';

class PaymentDonationFormController extends GetxController {
  final PaymentUsecase paymentUsecase;
  final GetInventoryItemsUsecase getInventoryItemsUsecase;

  PaymentDonationFormController({
    required this.paymentUsecase,
    required this.getInventoryItemsUsecase,
  });

  late final ProgramEntity program;
  final paymentType = 'Cash'.obs;
  final isHambaAllah = true.obs;
  final upzIdController = TextEditingController();
  final anonymousNameController = TextEditingController();
  final anonymousPhoneController = TextEditingController();
  final amountController = TextEditingController();
  final isPickupRequested = false.obs;
  final pickupAddressController = TextEditingController();
  final pickupLatitudeController = TextEditingController();
  final pickupLongitudeController = TextEditingController();
  final pickupScheduledDate = Rxn<DateTime>();
  final pickupTimeNoteController = TextEditingController();
  final pickupNotesController = TextEditingController();
  final isLoadingInventory = false.obs;
  final inventoryItems = <InventoryItemEntity>[].obs;
  final selectedNaturaItems = <NaturaItemEntity>[].obs;
  final isSubmitting = false.obs;
  final isCapturingLocation = false.obs;
  final proofFilePath = RxnString();
  int? muzzakiId;
  final Rx<PaymentResponseEntity?> donationResult = Rx(null);

  @override
  void onInit() {
    super.onInit();
    program = Get.arguments as ProgramEntity;
  }

  @override
  void onClose() {
    anonymousNameController.dispose();
    anonymousPhoneController.dispose();
    amountController.dispose();
    pickupAddressController.dispose();
    pickupLatitudeController.dispose();
    pickupLongitudeController.dispose();
    pickupScheduledDate.close();
    pickupTimeNoteController.dispose();
    pickupNotesController.dispose();
    super.onClose();
  }

  void _clearPickupForm() {
    pickupAddressController.clear();
    pickupLatitudeController.clear();
    pickupLongitudeController.clear();
    pickupTimeNoteController.clear();
    pickupTimeNoteController.clear();
    pickupNotesController.clear();
  }

  void onHambaAllahChanged(bool value) {
    if (Get.find<AuthService>().user.value?.user?.id == null) {
      showAppToast(
        Get.context as BuildContext,
        variant: AppToastVariant.warning,
        message: "Masuk Terlebih dahulu untuk donasi menggunakan identitas",
      );
      return;
    }
    isHambaAllah.value = value;
    if (!value) {
      anonymousNameController.clear();
      anonymousPhoneController.clear();
    }
  }

  void setPickupRequested(bool value) {
    isPickupRequested.value = value;
    if (!value) _clearPickupForm();
  }

  Future<void> pickProofFile() async {
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );
    if (file != null) {
      proofFilePath.value = file.path;
    }
  }

  Future<void> capturePickupLocation() async {
    if (!isPickupRequested.value) return;
    if (isCapturingLocation.isTrue || isSubmitting.isTrue) return;

    isCapturingLocation.value = true;
    try {
      final result = await LocationHelper.captureCurrentLocationWithAddress();
      if (isClosed) return;

      pickupLatitudeController.text = result.latitude.toStringAsFixed(6);
      pickupLongitudeController.text = result.longitude.toStringAsFixed(6);

      if (result.address != null && result.address!.isNotEmpty) {
        pickupAddressController.text = result.address!;
        if (Get.context != null) {
          showAppToast(
            Get.context!,
            message:
                'Koordinat dan alamat berhasil diisi. Anda dapat mengedit secara manual.',
            variant: AppToastVariant.success,
          );
        }
      } else {
        if (Get.context != null) {
          showAppToast(
            Get.context!,
            message:
                'Koordinat berhasil diisi. Silakan lengkapi alamat secara manual.',
            variant: AppToastVariant.info,
          );
        }
      }
    } on LocationException catch (e) {
      LocationHelper.handleLocationError(e);
    } catch (e) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Tidak dapat mengambil lokasi. Silakan isi manual.',
          variant: AppToastVariant.warning,
        );
      }
    } finally {
      isCapturingLocation.value = false;
    }
  }

  PickupDetailsEntity? _buildPickupDetails() {
    return buildPickupDetailsFromForm(
      isPickupRequested: isPickupRequested.value,
      address: pickupAddressController.text,
      scheduledDate: pickupScheduledDate.value,
      latitudeText: pickupLatitudeController.text,
      longitudeText: pickupLongitudeController.text,
      timeNote: pickupTimeNoteController.text,
      notes: pickupNotesController.text,
    );
  }

  Future setDonationType(String type) async {
    paymentType.value = type;
    if (type == 'Natura' && inventoryItems.isEmpty) {
      await fetchInventoryItems();
    }
  }

  Future<void> fetchInventoryItems() async {
    try {
      isLoadingInventory.value = true;
      inventoryItems.value = await getInventoryItemsUsecase();
    } catch (e) {
      showAppToast(
        Get.context as BuildContext,
        message: e.toString().replaceAll('Exception: ', ''),
        variant: AppToastVariant.danger,
        backgroundColor: Get.theme.cardColor,
        style: AppToastTheme.of(Get.context as BuildContext).copyWith(
          messageStyle: Get.theme.textTheme.titleSmall?.copyWith(
            color: AppColors.red,
          ),
        ),
      );
    } finally {
      isLoadingInventory.value = false;
    }
  }

  void addOrUpdateNaturaItem({
    required InventoryItemEntity item,
    required double qty,
    required double lineValue,
  }) {
    final existing = selectedNaturaItems.indexWhere(
      (n) => n.inventoryItemId == item.id,
    );
    final newItem = NaturaItemEntity(
      inventoryItemId: item.id,
      itemName: item.name,
      qty: qty,
      lineValue: lineValue,
    );
    if (existing >= 0) {
      selectedNaturaItems[existing] = newItem;
    } else {
      selectedNaturaItems.add(newItem);
    }
  }

  void removeNaturaItem(int inventoryItemId) {
    selectedNaturaItems.removeWhere(
      (n) => n.inventoryItemId == inventoryItemId,
    );
  }

  Future<void> submitPayment() async {
    if (isSubmitting.value) return;
    if (!isHambaAllah.value) return;

    final programId = program.id;
    if (programId == null) return;

    final pickupDetails = _buildPickupDetails();
    if (isPickupRequested.value && pickupDetails == null) return;

    final isNatura = paymentType.value == 'Natura';
    if (!isNatura) {
      final rawAmount = amountController.text.replaceAll('.', '');
      final amount = double.tryParse(rawAmount);
      if (amount == null || amount <= 0) {
        if (Get.context != null) {
          showAppToast(
            Get.context!,
            message: 'Masukkan nominal donasi yang valid.',
            variant: AppToastVariant.warning,
          );
        }
        return;
      }
    } else if (selectedNaturaItems.isEmpty) {
      if (Get.context != null) {
        showAppToast(
          Get.context!,
          message: 'Pilih minimal satu barang untuk donasi Natura.',
          variant: AppToastVariant.warning,
        );
      }
      return;
    }

    try {
      isSubmitting.value = true;
      final rawAmount = amountController.text.replaceAll('.', '');
      final paymentMethod = isPickupRequested.value
          ? 'Pickup'
          : (isNatura ? 'Natura' : 'Transfer');

      final user = Get.find<AuthService>().user.value;

      if (isHambaAllah.isTrue) {
        muzzakiId = null;
      } else if (user?.user?.roleCode == 'amil_penghimpun') {
        muzzakiId = muzzakiId;
      } else {
        muzzakiId = user?.user?.muzakkiProfile?.id;
      }

      donationResult.value = await paymentUsecase.call(
        PaymentRequestEntity(
          programId: programId,
          isAnonymous: isHambaAllah.value,
          anonymousPhone: anonymousPhoneController.text,
          anonymousName: anonymousNameController.text,
          muzakkiId: muzzakiId,
          upzId: upzIdController.text == ''
              ? null
              : int.parse(upzIdController.text),
          paymentMethod: paymentMethod,
          isNatura: isNatura,
          isPickupRequested: isPickupRequested.value,
          pickupDetails: pickupDetails,
          amount: isNatura ? null : double.tryParse(rawAmount),
          naturaItems: isNatura ? selectedNaturaItems.toList() : null,
          proofFilePath: proofFilePath.value,
        ),
        asGuest: isHambaAllah.value,
      );

      final result = donationResult.value!;
      final displayAmount = isNatura ? null : int.tryParse(rawAmount);

      amountController.clear();
      isHambaAllah.value = false;
      isPickupRequested.value = false;
      proofFilePath.value = null;
      _clearPickupForm();
      selectedNaturaItems.clear();

      await showPaymentInstructionDialog(
        response: result,
        title: 'Donasi',
        amount: displayAmount,
        paymentMethod: paymentMethod,
        onDone: Get.back,
      );
    } catch (e) {
      showAppToast(
        Get.context as BuildContext,
        message: e.toString().replaceAll('Exception: ', ''),
        variant: AppToastVariant.danger,
      );
    } finally {
      isSubmitting.value = false;
    }
  }
}

PickupDetailsEntity? buildPickupDetailsFromForm({
  required bool isPickupRequested,
  required String address,
  required DateTime? scheduledDate,
  String latitudeText = '',
  String longitudeText = '',
  String timeNote = '',
  String notes = '',
}) {
  if (!isPickupRequested) return null;

  final trimmedAddress = address.trim();
  if (trimmedAddress.isEmpty) {
    Get.snackbar('Perhatian', 'Alamat penjemputan wajib diisi.');
    return null;
  }
  if (scheduledDate == null) {
    Get.snackbar('Perhatian', 'Tanggal penjemputan wajib dipilih.');
    return null;
  }

  final scheduledDateStr =
      '${scheduledDate.year}-${scheduledDate.month.toString().padLeft(2, '0')}-${scheduledDate.day.toString().padLeft(2, '0')}';

  return PickupDetailsEntity(
    address: trimmedAddress,
    latitude: double.tryParse(latitudeText.trim()),
    longitude: double.tryParse(longitudeText.trim()),
    scheduledDate: scheduledDateStr,
    scheduledTimeNote: timeNote.trim().isNotEmpty ? timeNote.trim() : null,
    notes: notes.trim().isNotEmpty ? notes.trim() : null,
  );
}
