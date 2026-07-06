import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/const/zakat_constants.dart';
import '../../../../core/ui/dialog/app_ui_dialog.dart';
import '../../../../core/ui/theme/app_dialog_theme.dart';
import '../../../../domain/entity/request/zakat_calculate_request_entity.dart';
import '../../../../domain/entity/response/zakat_calculate_response_entity.dart';
import '../../../../domain/entity/response/zakat_type_entity.dart';
import '../../../../domain/usecase/zakat/calculate_zakat_usecase.dart';
import '../../../../service/auth/auth_service.dart';
import '../widget/login_required_dialog.dart';

class ZakatCalculateController extends GetxController {
  final CalculateZakatUsecase calculateZakatUsecase;

  ZakatCalculateController({required this.calculateZakatUsecase});

  late ZakatTypeEntity zakatType;
  late ZakatKind zakatKind;
  late List<ZakatInputField> fields;

  final Map<String, TextEditingController> inputControllers = {};
  final RxBool isCalculating = false.obs;
  final Rx<ZakatCalculateResponseEntity?> calculateResult = Rx(null);
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as Map<String, dynamic>;
    zakatType = args['zakatType'] as ZakatTypeEntity;
    zakatKind = ZakatConstants.resolveKind(zakatType);
    fields = ZakatConstants.inputSchema(zakatKind);
    for (final f in fields) {
      inputControllers[f.key] = TextEditingController();
    }
  }

  @override
  void onClose() {
    for (final c in inputControllers.values) {
      c.dispose();
    }
    scrollController.dispose();
    super.onClose();
  }

  Future<void> calculateZakat() async {
    final inputs = <String, num>{};
    var hasRequired = true;
    for (final f in fields) {
      final value = _parseField(f);
      inputs[f.key] = value;
      if (f.required && value <= 0) hasRequired = false;
    }

    if (!hasRequired) {
      calculateResult.value = null;
      return;
    }
    isCalculating.value = true;
    try {
      final response = await calculateZakatUsecase(
        ZakatCalculateRequestEntity(
          zakatTypeId: zakatType.id,
          parameters: ZakatCalculateParametersEntity(
            asset: _resolveAsset(inputs),
            people: zakatKind == ZakatKind.fitrah
                ? inputs['jumlahJiwa']?.toInt()
                : 1,
          ),
        ),
      );
      calculateResult.value = response;

      Future.delayed(const Duration(milliseconds: 300), () {
        if (scrollController.hasClients) {
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutCubic,
          );
        }
      });
    } catch (e) {
      calculateResult.value = null;
      if (Get.context != null) {
        await showAppUiDialog(
          context: Get.context!,
          variant: AppDialogVariant.danger,
          title: 'Gagal Menghitung',
          message: e.toString().replaceAll('Exception: ', ''),
          confirmLabel: 'OK',
          onConfirm: () => Get.back(),
        );
      }
    } finally {
      isCalculating.value = false;
    }
  }

  Future<void> payment() async {
    if (Get.find<AuthService>().user.value?.user?.id == null) {
      await showGuestLoginRequiredDialog(
        message:
            'Pembayaran zakat memerlukan akun terdaftar untuk menerbitkan BSZ. Silakan masuk atau daftar terlebih dahulu.',
      );
    }

    //Get.toNamed(RouteName.)
  }

  num? _resolveAsset(Map<String, num> inputs) {
    switch (zakatKind) {
      case ZakatKind.maal:
        return inputs['totalHarta'];
      case ZakatKind.fitrah:
        return null;
      case ZakatKind.profesi:
        return (inputs['penghasilanBulanan'] ?? 0) +
            (inputs['penghasilanLain'] ?? 0);
      case ZakatKind.emasPerak:
        final goldPrice = _pricePerUnit(ZakatConstants.nisabTypeGold);
        final silverPrice = _pricePerUnit(ZakatConstants.nisabTypeSilver);
        return (inputs['gramEmas'] ?? 0) * goldPrice +
            (inputs['gramPerak'] ?? 0) * silverPrice;
      case ZakatKind.tijarah:
        return (inputs['asetDagang'] ?? 0) +
            (inputs['laba'] ?? 0) +
            (inputs['piutang'] ?? 0) -
            (inputs['utang'] ?? 0);
    }
  }

  double _pricePerUnit(String code) {
    final commodity = zakatType.commodity;
    if (commodity != null && commodity.code == code) {
      return commodity.pricePerUnit ?? 0;
    }
    return 0;
  }

  num _parseField(ZakatInputField field) {
    final text = inputControllers[field.key]?.text.trim() ?? '';
    if (text.isEmpty) return 0;
    if (field.type == ZakatInputType.currency) {
      final raw = text.replaceAll('.', '').replaceAll(',', '');
      return num.tryParse(raw) ?? 0;
    }
    return num.tryParse(text.replaceAll(',', '.')) ?? 0;
  }
}
