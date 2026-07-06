// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disbursement_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisbursementEntity _$DisbursementEntityFromJson(Map<String, dynamic> json) =>
    _DisbursementEntity(
      id: (json['id'] as num?)?.toInt(),
      upz: json['upz'] as String?,
      upzLocation: json['upzLocation'] as String?,
      fundType: json['fundType'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      disbursementType: json['disbursementType'] as String?,
      status: json['status'] as String?,
      location: json['location'] as String?,
      proofUrl: json['proofUrl'] as String?,
      inventoryItem: json['inventoryItem'] as List<dynamic>?,
      naturaQty: (json['naturaQty'] as num?)?.toDouble(),
      kabid: json['kabid'] as String?,
      pimpinan: json['pimpinan'] as String?,
      kabidApprovedAt: json['kabidApprovedAt'] as String?,
      pimpinanApprovedAt: json['pimpinanApprovedAt'] as String?,
      approvalNotes: json['approvalNotes'] as String?,
      journal: json['journal'] == null
          ? null
          : DisbursementJournalEntity.fromJson(
              json['journal'] as Map<String, dynamic>,
            ),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      mustahik: json['mustahik'] == null
          ? null
          : DisbursementMustahikEntity.fromJson(
              json['mustahik'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DisbursementEntityToJson(_DisbursementEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'upz': instance.upz,
      'upzLocation': instance.upzLocation,
      'fundType': instance.fundType,
      'amount': instance.amount,
      'disbursementType': instance.disbursementType,
      'status': instance.status,
      'location': instance.location,
      'proofUrl': instance.proofUrl,
      'inventoryItem': instance.inventoryItem,
      'naturaQty': instance.naturaQty,
      'kabid': instance.kabid,
      'pimpinan': instance.pimpinan,
      'kabidApprovedAt': instance.kabidApprovedAt,
      'pimpinanApprovedAt': instance.pimpinanApprovedAt,
      'approvalNotes': instance.approvalNotes,
      'journal': instance.journal,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'mustahik': instance.mustahik,
    };

_DisbursementJournalEntity _$DisbursementJournalEntityFromJson(
  Map<String, dynamic> json,
) => _DisbursementJournalEntity(
  id: (json['id'] as num?)?.toInt(),
  referenceNo: json['referenceNo'] as String?,
  transactionDate: json['transactionDate'] as String?,
  description: json['description'] as String?,
  totalAmount: (json['totalAmount'] as num?)?.toInt(),
  status: json['status'] as String?,
);

Map<String, dynamic> _$DisbursementJournalEntityToJson(
  _DisbursementJournalEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'referenceNo': instance.referenceNo,
  'transactionDate': instance.transactionDate,
  'description': instance.description,
  'totalAmount': instance.totalAmount,
  'status': instance.status,
};
