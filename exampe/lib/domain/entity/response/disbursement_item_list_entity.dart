import 'package:freezed_annotation/freezed_annotation.dart';

part 'disbursement_item_list_entity.freezed.dart';
part 'disbursement_item_list_entity.g.dart';

/// Response item GET /api/mobile/v1/disbursements
@Freezed()
abstract class DisbursementItemListEntity with _$DisbursementItemListEntity {
  const factory DisbursementItemListEntity({
    int? id,
    String? proofUrl,
    String? upz,
    String? fundType,
    int? amount,
    String? disbursementType,
    String? status,
    String? createdAt,
    String? updatedAt,
    DisbursementMustahikEntity? mustahik,
  }) = _DisbursementItemListEntity;

  factory DisbursementItemListEntity.fromJson(Map<String, dynamic> json) =>
      _$DisbursementItemListEntityFromJson(json);
}

@Freezed()
abstract class DisbursementMustahikEntity with _$DisbursementMustahikEntity {
  const factory DisbursementMustahikEntity({String? name, String? asnafCategory}) =
      _DisbursementMustahikEntity;

  factory DisbursementMustahikEntity.fromJson(Map<String, dynamic> json) =>
      _$DisbursementMustahikEntityFromJson(json);
}
