import 'package:freezed_annotation/freezed_annotation.dart';

import '../natura_item_entity.dart';
import '../pickup_details_entity.dart';

part 'payment_request_entity.freezed.dart';
part 'payment_request_entity.g.dart';

@freezed
abstract class PaymentRequestEntity with _$PaymentRequestEntity {
  const factory PaymentRequestEntity({
    required int programId,
    int? muzakkiId,
    String? muzakkiNik,

    String? paymentMethod,
    @Default(false) bool isNatura,
    @Default(false) bool isPickupRequested,
    PickupDetailsEntity? pickupDetails,
    double? amount,
    List<NaturaItemEntity>? naturaItems,
    String? proofFilePath,
    bool? isAnonymous,
    String? anonymousName,
    String? anonymousPhone,
    int? upzId,
    double? latitude,
    double? longitude,
  }) = _PaymentRequestEntity;

  factory PaymentRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestEntityFromJson(json);
}
