// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickupDetailsEntity _$PickupDetailsEntityFromJson(Map<String, dynamic> json) =>
    _PickupDetailsEntity(
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      scheduledDate: json['scheduledDate'] as String?,
      scheduledTimeNote: json['scheduledTimeNote'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$PickupDetailsEntityToJson(
  _PickupDetailsEntity instance,
) => <String, dynamic>{
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'scheduledDate': instance.scheduledDate,
  'scheduledTimeNote': instance.scheduledTimeNote,
  'notes': instance.notes,
};
