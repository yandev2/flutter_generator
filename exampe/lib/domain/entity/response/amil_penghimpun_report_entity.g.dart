// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amil_penghimpun_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AmilPenghimpunReportEntity _$AmilPenghimpunReportEntityFromJson(
  Map<String, dynamic> json,
) => _AmilPenghimpunReportEntity(
  amilInfo: json['amilInfo'] == null
      ? null
      : AmilInfoEntity.fromJson(json['amilInfo'] as Map<String, dynamic>),
  period: json['period'] == null
      ? null
      : ReportAmilPenghimpunPeriodEntity.fromJson(
          json['period'] as Map<String, dynamic>,
        ),
  collection: json['collection'] == null
      ? null
      : ReportAmilPenghimpunCollectionEntity.fromJson(
          json['collection'] as Map<String, dynamic>,
        ),
  reportDownloadUrl: json['reportDownloadUrl'] as String?,
);

Map<String, dynamic> _$AmilPenghimpunReportEntityToJson(
  _AmilPenghimpunReportEntity instance,
) => <String, dynamic>{
  'amilInfo': instance.amilInfo,
  'period': instance.period,
  'collection': instance.collection,
  'reportDownloadUrl': instance.reportDownloadUrl,
};

_ReportAmilPenghimpunPeriodEntity _$ReportAmilPenghimpunPeriodEntityFromJson(
  Map<String, dynamic> json,
) => _ReportAmilPenghimpunPeriodEntity(
  month: (json['month'] as num?)?.toInt(),
  year: (json['year'] as num?)?.toInt(),
  startDate: json['startDate'] as String?,
  endDate: json['endDate'] as String?,
);

Map<String, dynamic> _$ReportAmilPenghimpunPeriodEntityToJson(
  _ReportAmilPenghimpunPeriodEntity instance,
) => <String, dynamic>{
  'month': instance.month,
  'year': instance.year,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
};

_ReportAmilPenghimpunCollectionEntity
_$ReportAmilPenghimpunCollectionEntityFromJson(Map<String, dynamic> json) =>
    _ReportAmilPenghimpunCollectionEntity(
      totalCollectedAmount: (json['totalCollectedAmount'] as num?)?.toInt(),
      totalDonationCount: (json['totalDonationCount'] as num?)?.toInt(),
      naturaCount: (json['naturaCount'] as num?)?.toInt(),
      cashCount: (json['cashCount'] as num?)?.toInt(),
      pickupCompleted: (json['pickupCompleted'] as num?)?.toInt(),
      pickupFailed: (json['pickupFailed'] as num?)?.toInt(),
      pickupActive: (json['pickupActive'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReportAmilPenghimpunCollectionEntityToJson(
  _ReportAmilPenghimpunCollectionEntity instance,
) => <String, dynamic>{
  'totalCollectedAmount': instance.totalCollectedAmount,
  'totalDonationCount': instance.totalDonationCount,
  'naturaCount': instance.naturaCount,
  'cashCount': instance.cashCount,
  'pickupCompleted': instance.pickupCompleted,
  'pickupFailed': instance.pickupFailed,
  'pickupActive': instance.pickupActive,
};
