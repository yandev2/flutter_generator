// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_advance_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CashAdvanceRequestEntity _$CashAdvanceRequestEntityFromJson(
  Map<String, dynamic> json,
) => _CashAdvanceRequestEntity(
  upzId: (json['upzId'] as num?)?.toInt(),
  fundTypeId: (json['fundTypeId'] as num?)?.toInt(),
  forceMajeureId: (json['forceMajeureId'] as num?)?.toInt(),
  amount: (json['amount'] as num?)?.toInt(),
  purpose: json['purpose'] as String?,
  requestDate: json['requestDate'] as String?,
  dueDate: json['dueDate'] as String?,
);

Map<String, dynamic> _$CashAdvanceRequestEntityToJson(
  _CashAdvanceRequestEntity instance,
) => <String, dynamic>{
  'upzId': instance.upzId,
  'fundTypeId': instance.fundTypeId,
  'forceMajeureId': instance.forceMajeureId,
  'amount': instance.amount,
  'purpose': instance.purpose,
  'requestDate': instance.requestDate,
  'dueDate': instance.dueDate,
};
