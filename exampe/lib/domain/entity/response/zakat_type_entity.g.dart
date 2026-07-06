// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zakat_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZakatTypeEntity _$ZakatTypeEntityFromJson(Map<String, dynamic> json) =>
    _ZakatTypeEntity(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
      isActive: json['isActive'] as bool?,
      fundTypeId: (json['fundTypeId'] as num?)?.toInt(),
      fundTypeName: json['fundTypeName'] as String?,
      commodity: json['commodity'] == null
          ? null
          : ZakatTypeCommodityEntity.fromJson(
              json['commodity'] as Map<String, dynamic>,
            ),
      zakatRate: (json['zakatRate'] as num?)?.toDouble(),
      haulMonths: (json['haulMonths'] as num?)?.toInt(),
      nisabFormula: json['nisabFormula'] as String?,
      zakatFormula: json['zakatFormula'] as String?,
      variables: json['variables'] == null
          ? null
          : ZakatTypeVariablesEntity.fromJson(
              json['variables'] as Map<String, dynamic>,
            ),
      variablesNote: json['variablesNote'] as String?,
    );

Map<String, dynamic> _$ZakatTypeEntityToJson(_ZakatTypeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'isActive': instance.isActive,
      'fundTypeId': instance.fundTypeId,
      'fundTypeName': instance.fundTypeName,
      'commodity': instance.commodity,
      'zakatRate': instance.zakatRate,
      'haulMonths': instance.haulMonths,
      'nisabFormula': instance.nisabFormula,
      'zakatFormula': instance.zakatFormula,
      'variables': instance.variables,
      'variablesNote': instance.variablesNote,
    };

_ZakatTypeCommodityEntity _$ZakatTypeCommodityEntityFromJson(
  Map<String, dynamic> json,
) => _ZakatTypeCommodityEntity(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  name: json['name'] as String?,
  unit: json['unit'] as String?,
  nisabQuantity: (json['nisabQuantity'] as num?)?.toDouble(),
  pricePerUnit: (json['pricePerUnit'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ZakatTypeCommodityEntityToJson(
  _ZakatTypeCommodityEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'unit': instance.unit,
  'nisabQuantity': instance.nisabQuantity,
  'pricePerUnit': instance.pricePerUnit,
};

_ZakatTypeVariablesEntity _$ZakatTypeVariablesEntityFromJson(
  Map<String, dynamic> json,
) => _ZakatTypeVariablesEntity(
  price: (json['price'] as num?)?.toDouble(),
  rate: (json['rate'] as num?)?.toDouble(),
  nisabQty: (json['nisabQty'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ZakatTypeVariablesEntityToJson(
  _ZakatTypeVariablesEntity instance,
) => <String, dynamic>{
  'price': instance.price,
  'rate': instance.rate,
  'nisabQty': instance.nisabQty,
};
