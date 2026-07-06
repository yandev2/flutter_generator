import 'package:freezed_annotation/freezed_annotation.dart';

part 'zakat_calculate_request_entity.freezed.dart';
part 'zakat_calculate_request_entity.g.dart';

/// Request POST /api/mobile/v1/zakat/calculate
@Freezed()
abstract class ZakatCalculateRequestEntity with _$ZakatCalculateRequestEntity {
  const factory ZakatCalculateRequestEntity({
    int? zakatTypeId,
    ZakatCalculateParametersEntity? parameters,
  }) = _ZakatCalculateRequestEntity;

  factory ZakatCalculateRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatCalculateRequestEntityFromJson(json);
}

@Freezed()
abstract class ZakatCalculateParametersEntity with _$ZakatCalculateParametersEntity {
  const factory ZakatCalculateParametersEntity({
    /// Nilai harta / aset (rupiah)
    num? asset,

    /// Jumlah jiwa (untuk zakat fitrah)
    int? people,
  }) = _ZakatCalculateParametersEntity;

  factory ZakatCalculateParametersEntity.fromJson(Map<String, dynamic> json) =>
      _$ZakatCalculateParametersEntityFromJson(json);
}
