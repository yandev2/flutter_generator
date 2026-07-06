// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muzzaki_transaction_item_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuzzakiTransactionItemListEntity _$MuzzakiTransactionItemListEntityFromJson(
  Map<String, dynamic> json,
) => _MuzzakiTransactionItemListEntity(
  id: (json['id'] as num?)?.toInt(),
  programName: json['programName'] as String?,
  paymentMethod: json['paymentMethod'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  isNatura: json['isNatura'] as bool?,
  status: json['status'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$MuzzakiTransactionItemListEntityToJson(
  _MuzzakiTransactionItemListEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'programName': instance.programName,
  'paymentMethod': instance.paymentMethod,
  'amount': instance.amount,
  'isNatura': instance.isNatura,
  'status': instance.status,
  'createdAt': instance.createdAt,
};
