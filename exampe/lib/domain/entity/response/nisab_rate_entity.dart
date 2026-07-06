import 'package:freezed_annotation/freezed_annotation.dart';

part 'nisab_rate_entity.freezed.dart';
part 'nisab_rate_entity.g.dart';

/// Response item GET /api/mobile/v1/zakat/nisab
@Freezed()
abstract class NisabRateEntity with _$NisabRateEntity {
  const factory NisabRateEntity({
    int? id,
    String? code,
    String? name,
    String? unit,
    double? nisabQuantity,
    double? pricePerUnit,
    double? nisabValue,
    String? updatedAt,
  }) = _NisabRateEntity;

  factory NisabRateEntity.fromJson(Map<String, dynamic> json) =>
      _$NisabRateEntityFromJson(json);
}
