// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muzakki_contribution_summary_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuzakkiContributionSummaryEntity _$MuzakkiContributionSummaryEntityFromJson(
  Map<String, dynamic> json,
) => _MuzakkiContributionSummaryEntity(
  muzakkiId: (json['muzakkiId'] as num?)?.toInt(),
  totalZakat: (json['totalZakat'] as num?)?.toInt(),
  totalDonasi: (json['totalDonasi'] as num?)?.toInt(),
  bszCountThisYear: (json['bszCountThisYear'] as num?)?.toInt(),
  lastTransactionDate: json['lastTransactionDate'] as String?,
);

Map<String, dynamic> _$MuzakkiContributionSummaryEntityToJson(
  _MuzakkiContributionSummaryEntity instance,
) => <String, dynamic>{
  'muzakkiId': instance.muzakkiId,
  'totalZakat': instance.totalZakat,
  'totalDonasi': instance.totalDonasi,
  'bszCountThisYear': instance.bszCountThisYear,
  'lastTransactionDate': instance.lastTransactionDate,
};
