import 'package:freezed_annotation/freezed_annotation.dart';
import 'disbursement_mustahik_entity.dart';

part 'disbursement_entity.freezed.dart';
part 'disbursement_entity.g.dart';

/// Response GET /api/mobile/v1/disbursements/:id
@Freezed()
abstract class DisbursementEntity with _$DisbursementEntity {
  const factory DisbursementEntity({
    int? id,
    String? upz,
    String? upzLocation,
    String? fundType,
    int? amount,
    String? disbursementType,
    String? status,
    String? location,
    String? proofUrl,
    List<dynamic>? inventoryItem,
    double? naturaQty,
    String? kabid,
    String? pimpinan,
    String? kabidApprovedAt,
    String? pimpinanApprovedAt,
    String? approvalNotes,
    DisbursementJournalEntity? journal,
    String? createdAt,
    String? updatedAt,
    DisbursementMustahikEntity? mustahik,
  }) = _DisbursementEntity;

  factory DisbursementEntity.fromJson(Map<String, dynamic> json) =>
      _$DisbursementEntityFromJson(json);
}

@Freezed()
abstract class DisbursementJournalEntity with _$DisbursementJournalEntity {
  const factory DisbursementJournalEntity({
    int? id,
    String? referenceNo,
    String? transactionDate,
    String? description,
    int? totalAmount,
    String? status,
  }) = _DisbursementJournalEntity;

  factory DisbursementJournalEntity.fromJson(Map<String, dynamic> json) =>
      _$DisbursementJournalEntityFromJson(json);
}


