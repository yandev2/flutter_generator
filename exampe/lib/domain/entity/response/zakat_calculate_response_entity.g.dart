// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zakat_calculate_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZakatCalculateResponseEntity _$ZakatCalculateResponseEntityFromJson(
  Map<String, dynamic> json,
) => _ZakatCalculateResponseEntity(
  zakatTypeId: (json['zakatTypeId'] as num?)?.toInt(),
  zakatTypeName: json['zakatTypeName'] as String?,
  slug: json['slug'] as String?,
  asset: (json['asset'] as num?)?.toInt(),
  people: (json['people'] as num?)?.toInt(),
  nisabValue: (json['nisabValue'] as num?)?.toInt(),
  zakatAmount: (json['zakatAmount'] as num?)?.toInt(),
  isWajib: json['isWajib'] as bool?,
  isMustahik: json['isMustahik'] as bool?,
  currency: json['currency'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$ZakatCalculateResponseEntityToJson(
  _ZakatCalculateResponseEntity instance,
) => <String, dynamic>{
  'zakatTypeId': instance.zakatTypeId,
  'zakatTypeName': instance.zakatTypeName,
  'slug': instance.slug,
  'asset': instance.asset,
  'people': instance.people,
  'nisabValue': instance.nisabValue,
  'zakatAmount': instance.zakatAmount,
  'isWajib': instance.isWajib,
  'isMustahik': instance.isMustahik,
  'currency': instance.currency,
  'message': instance.message,
};
