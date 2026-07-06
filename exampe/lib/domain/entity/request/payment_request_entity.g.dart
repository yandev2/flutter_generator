// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRequestEntity _$PaymentRequestEntityFromJson(
  Map<String, dynamic> json,
) => _PaymentRequestEntity(
  programId: (json['programId'] as num).toInt(),
  muzakkiId: (json['muzakkiId'] as num?)?.toInt(),
  muzakkiNik: json['muzakkiNik'] as String?,
  paymentMethod: json['paymentMethod'] as String?,
  isNatura: json['isNatura'] as bool? ?? false,
  isPickupRequested: json['isPickupRequested'] as bool? ?? false,
  pickupDetails: json['pickupDetails'] == null
      ? null
      : PickupDetailsEntity.fromJson(
          json['pickupDetails'] as Map<String, dynamic>,
        ),
  amount: (json['amount'] as num?)?.toDouble(),
  naturaItems: (json['naturaItems'] as List<dynamic>?)
      ?.map((e) => NaturaItemEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  proofFilePath: json['proofFilePath'] as String?,
  isAnonymous: json['isAnonymous'] as bool?,
  anonymousName: json['anonymousName'] as String?,
  anonymousPhone: json['anonymousPhone'] as String?,
  upzId: (json['upzId'] as num?)?.toInt(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PaymentRequestEntityToJson(
  _PaymentRequestEntity instance,
) => <String, dynamic>{
  'programId': instance.programId,
  'muzakkiId': instance.muzakkiId,
  'muzakkiNik': instance.muzakkiNik,
  'paymentMethod': instance.paymentMethod,
  'isNatura': instance.isNatura,
  'isPickupRequested': instance.isPickupRequested,
  'pickupDetails': instance.pickupDetails,
  'amount': instance.amount,
  'naturaItems': instance.naturaItems,
  'proofFilePath': instance.proofFilePath,
  'isAnonymous': instance.isAnonymous,
  'anonymousName': instance.anonymousName,
  'anonymousPhone': instance.anonymousPhone,
  'upzId': instance.upzId,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
