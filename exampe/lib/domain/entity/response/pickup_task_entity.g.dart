// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickupTaskEntity _$PickupTaskEntityFromJson(Map<String, dynamic> json) =>
    _PickupTaskEntity(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      requestCode: json['requestCode'] as String?,
      status: json['status'] as String?,
      pickupType: json['pickupType'] as String?,
      muzakkiPhone: json['muzakkiPhone'] as String?,
      muzzaki: json['muzzaki'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      scheduledDate: json['scheduledDate'] as String?,
      scheduledTimeNote: json['scheduledTimeNote'] as String?,
      createdAt: json['createdAt'] as String?,
      naturaItems: (json['naturaItems'] as List<dynamic>?)
          ?.map(
            (e) =>
                PickupTaskNaturaItemEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      estimatedAmount: (json['estimatedAmount'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$PickupTaskEntityToJson(_PickupTaskEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'requestCode': instance.requestCode,
      'status': instance.status,
      'pickupType': instance.pickupType,
      'muzakkiPhone': instance.muzakkiPhone,
      'muzzaki': instance.muzzaki,
      'description': instance.description,
      'address': instance.address,
      'scheduledDate': instance.scheduledDate,
      'scheduledTimeNote': instance.scheduledTimeNote,
      'createdAt': instance.createdAt,
      'naturaItems': instance.naturaItems,
      'estimatedAmount': instance.estimatedAmount,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'notes': instance.notes,
    };

_PickupTaskNaturaItemEntity _$PickupTaskNaturaItemEntityFromJson(
  Map<String, dynamic> json,
) => _PickupTaskNaturaItemEntity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  uom: json['uom'] as String?,
  photoUrl: json['photoUrl'] as String?,
  lineValue: json['lineValue'] as num?,
);

Map<String, dynamic> _$PickupTaskNaturaItemEntityToJson(
  _PickupTaskNaturaItemEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'uom': instance.uom,
  'photoUrl': instance.photoUrl,
  'lineValue': instance.lineValue,
};
