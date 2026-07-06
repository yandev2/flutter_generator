// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_majeure_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForceMajeureEntity _$ForceMajeureEntityFromJson(Map<String, dynamic> json) =>
    _ForceMajeureEntity(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      budgetCeiling: (json['budgetCeiling'] as num?)?.toInt(),
      spentAmount: (json['spentAmount'] as num?)?.toInt(),
      status: json['status'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$ForceMajeureEntityToJson(_ForceMajeureEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'budgetCeiling': instance.budgetCeiling,
      'spentAmount': instance.spentAmount,
      'status': instance.status,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
