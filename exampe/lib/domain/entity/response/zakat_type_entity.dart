import 'package:freezed_annotation/freezed_annotation.dart';

part 'zakat_type_entity.freezed.dart';
part 'zakat_type_entity.g.dart';

/// Response item dari GET /api/mobile/v1/zakat/types
@Freezed()
abstract class ZakatTypeEntity with _$ZakatTypeEntity {
  const factory ZakatTypeEntity({
    int? id,
    String? slug,
    String? name,
    String? description,
    String? iconUrl,
    bool? isActive,
    int? fundTypeId,
    String? fundTypeName,
    ZakatTypeCommodityEntity? commodity,
    double? zakatRate,
    int? haulMonths,
    String? nisabFormula,
    String? zakatFormula,
    ZakatTypeVariablesEntity? variables,
    String? variablesNote,
  }) = _ZakatTypeEntity;

  factory ZakatTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatTypeEntityFromJson(json);
}

@Freezed()
abstract class ZakatTypeCommodityEntity with _$ZakatTypeCommodityEntity {
  const factory ZakatTypeCommodityEntity({
    int? id,
    String? code,
    String? name,
    String? unit,
    double? nisabQuantity,
    double? pricePerUnit,
  }) = _ZakatTypeCommodityEntity;

  factory ZakatTypeCommodityEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatTypeCommodityEntityFromJson(json);
}

@Freezed()
abstract class ZakatTypeVariablesEntity with _$ZakatTypeVariablesEntity {
  const factory ZakatTypeVariablesEntity({
    double? price,
    double? rate,
    double? nisabQty,
  }) = _ZakatTypeVariablesEntity;

  factory ZakatTypeVariablesEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatTypeVariablesEntityFromJson(json);
}
