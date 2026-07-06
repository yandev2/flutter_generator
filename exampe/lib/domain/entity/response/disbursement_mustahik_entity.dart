import 'package:freezed_annotation/freezed_annotation.dart';

part 'disbursement_mustahik_entity.freezed.dart';
part 'disbursement_mustahik_entity.g.dart';

@Freezed()
abstract class DisbursementMustahikEntity with _$DisbursementMustahikEntity {
  const factory DisbursementMustahikEntity({
    String? name,
    String? asnafCategory,
  }) = _DisbursementMustahikEntity;

  factory DisbursementMustahikEntity.fromJson(Map<String, dynamic> json) =>
      _$DisbursementMustahikEntityFromJson(json);
}
