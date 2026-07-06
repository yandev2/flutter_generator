import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_advance_request_entity.freezed.dart';
part 'cash_advance_request_entity.g.dart';

@Freezed()
abstract class CashAdvanceRequestEntity with _$CashAdvanceRequestEntity {
  const factory CashAdvanceRequestEntity({
    int? upzId,
    int? fundTypeId,
    int? forceMajeureId,
    int? amount,
    String? purpose,
    String? requestDate,
    String? dueDate,
  }) = _CashAdvanceRequestEntity;

  factory CashAdvanceRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$CashAdvanceRequestEntityFromJson(json);
}
