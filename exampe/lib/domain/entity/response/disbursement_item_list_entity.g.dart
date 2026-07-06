// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disbursement_item_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisbursementItemListEntity _$DisbursementItemListEntityFromJson(
  Map<String, dynamic> json,
) => _DisbursementItemListEntity(
  id: (json['id'] as num?)?.toInt(),
  proofUrl: json['proofUrl'] as String?,
  upz: json['upz'] as String?,
  fundType: json['fundType'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  disbursementType: json['disbursementType'] as String?,
  status: json['status'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  mustahik: json['mustahik'] == null
      ? null
      : DisbursementMustahikEntity.fromJson(
          json['mustahik'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DisbursementItemListEntityToJson(
  _DisbursementItemListEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'proofUrl': instance.proofUrl,
  'upz': instance.upz,
  'fundType': instance.fundType,
  'amount': instance.amount,
  'disbursementType': instance.disbursementType,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'mustahik': instance.mustahik,
};

_DisbursementMustahikEntity _$DisbursementMustahikEntityFromJson(
  Map<String, dynamic> json,
) => _DisbursementMustahikEntity(
  name: json['name'] as String?,
  asnafCategory: json['asnafCategory'] as String?,
);

Map<String, dynamic> _$DisbursementMustahikEntityToJson(
  _DisbursementMustahikEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'asnafCategory': instance.asnafCategory,
};
