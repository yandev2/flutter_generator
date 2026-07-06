// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spj_report_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpjReportItemEntity _$SpjReportItemEntityFromJson(Map<String, dynamic> json) =>
    _SpjReportItemEntity(
      description: json['description'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      receiptFilePath: json['receiptFilePath'] as String?,
    );

Map<String, dynamic> _$SpjReportItemEntityToJson(
  _SpjReportItemEntity instance,
) => <String, dynamic>{
  'description': instance.description,
  'amount': instance.amount,
  'receiptFilePath': instance.receiptFilePath,
};
