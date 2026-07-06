// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nisab_rate_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NisabRateEntity _$NisabRateEntityFromJson(Map<String, dynamic> json) =>
    _NisabRateEntity(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      nisabQuantity: (json['nisabQuantity'] as num?)?.toDouble(),
      pricePerUnit: (json['pricePerUnit'] as num?)?.toDouble(),
      nisabValue: (json['nisabValue'] as num?)?.toDouble(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$NisabRateEntityToJson(_NisabRateEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'unit': instance.unit,
      'nisabQuantity': instance.nisabQuantity,
      'pricePerUnit': instance.pricePerUnit,
      'nisabValue': instance.nisabValue,
      'updatedAt': instance.updatedAt,
    };
