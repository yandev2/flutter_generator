import 'dart:convert';

import '../../../domain/entity/pickup_details_entity.dart';
import '../../../domain/entity/request/payment_request_entity.dart';
import '../natura_item_model.dart';

class PaymentRequestModel {
  final int programId;
  final String? paymentMethod;
  final bool isNatura;
  final bool isPickupRequested;
  final PickupDetailsEntity? pickupDetails;
  final double? amount;
  final List<NaturaItemModel>? naturaItems;
  final String? proofFilePath;
  final String? anonymousName;
  final String? anonymousPhone;
  final int? upzId;

  PaymentRequestModel({
    required this.programId,
    this.paymentMethod,
    this.isNatura = false,
    this.isPickupRequested = false,
    this.pickupDetails,
    this.amount,
    this.naturaItems,
    this.proofFilePath,
    this.anonymousName,
    this.anonymousPhone,
    this.upzId,
  });

  factory PaymentRequestModel.fromEntity(PaymentRequestEntity entity) {
    return PaymentRequestModel(
      programId: entity.programId,
      paymentMethod: entity.paymentMethod,
      isNatura: entity.isNatura,
      isPickupRequested: entity.isPickupRequested,
      pickupDetails: entity.pickupDetails,
      amount: entity.amount,
      naturaItems: entity.naturaItems?.map((e) => NaturaItemModel.fromEntity(e)).toList(),
      proofFilePath: entity.proofFilePath,
      anonymousName: entity.anonymousName,
      anonymousPhone: entity.anonymousPhone,
      upzId: entity.upzId,
    );
  }

  Map<String, String> toMultipartFields() {
    final fields = <String, String>{
      'programId': programId.toString(),
      'isNatura': isNatura.toString(),
      'isPickupRequested': isPickupRequested.toString(),
    };

    if (paymentMethod != null) {
      fields['paymentMethod'] = paymentMethod!;
    }
    if (amount != null) {
      fields['amount'] = amount!.toInt().toString();
    }
    if (upzId != null) {
      fields['upzId'] = upzId!.toString();
    }
    if (anonymousName != null && anonymousName!.isNotEmpty) {
      fields['anonymousName'] = anonymousName!;
    }
    if (anonymousPhone != null && anonymousPhone!.isNotEmpty) {
      fields['anonymousPhone'] = anonymousPhone!;
    }
    if (naturaItems != null && naturaItems!.isNotEmpty) {
      fields['naturaItems'] = jsonEncode(naturaItems!.map((e) => e.toMultipartMap()).toList());
    }
    if (isPickupRequested && pickupDetails != null) {
      fields['pickupDetails'] = jsonEncode(pickupDetails!.toJson());
    }

    return fields;
  }

  PaymentRequestEntity toEntity() {
    return PaymentRequestEntity(
      programId: programId,
      paymentMethod: paymentMethod,
      isNatura: isNatura,
      isPickupRequested: isPickupRequested,
      pickupDetails: pickupDetails,
      amount: amount,
      naturaItems: naturaItems?.map((e) => e.toEntity()).toList(),
      proofFilePath: proofFilePath,
      anonymousName: anonymousName,
      anonymousPhone: anonymousPhone,
      upzId: upzId,
    );
  }
}
