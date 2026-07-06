// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zakat_calculate_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZakatCalculateRequestEntity _$ZakatCalculateRequestEntityFromJson(
  Map<String, dynamic> json,
) => _ZakatCalculateRequestEntity(
  zakatTypeId: (json['zakatTypeId'] as num?)?.toInt(),
  parameters: json['parameters'] == null
      ? null
      : ZakatCalculateParametersEntity.fromJson(
          json['parameters'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ZakatCalculateRequestEntityToJson(
  _ZakatCalculateRequestEntity instance,
) => <String, dynamic>{
  'zakatTypeId': instance.zakatTypeId,
  'parameters': instance.parameters,
};

_ZakatCalculateParametersEntity _$ZakatCalculateParametersEntityFromJson(
  Map<String, dynamic> json,
) => _ZakatCalculateParametersEntity(
  asset: json['asset'] as num?,
  people: (json['people'] as num?)?.toInt(),
);

Map<String, dynamic> _$ZakatCalculateParametersEntityToJson(
  _ZakatCalculateParametersEntity instance,
) => <String, dynamic>{'asset': instance.asset, 'people': instance.people};
