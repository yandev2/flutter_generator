import 'package:freezed_annotation/freezed_annotation.dart';

part 'zakat_calculate_response_entity.freezed.dart';
part 'zakat_calculate_response_entity.g.dart';

/// Response POST /api/mobile/v1/zakat/calculate
@Freezed()
abstract class ZakatCalculateResponseEntity
    with _$ZakatCalculateResponseEntity {
  const factory ZakatCalculateResponseEntity({
    int? zakatTypeId,
    String? zakatTypeName,
    String? slug,
    int? asset,
    int? people,
    int? nisabValue,
    int? zakatAmount,
    bool? isWajib,
    bool? isMustahik,
    String? currency,
    String? message,
  }) = _ZakatCalculateResponseEntity;

  factory ZakatCalculateResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatCalculateResponseEntityFromJson(json);
}
