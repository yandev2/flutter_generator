// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amil_surveyor_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AmilSurveyorReportEntity _$AmilSurveyorReportEntityFromJson(
  Map<String, dynamic> json,
) => _AmilSurveyorReportEntity(
  amilInfo: json['amilInfo'] == null
      ? null
      : AmilInfoEntity.fromJson(json['amilInfo'] as Map<String, dynamic>),
  period: json['period'] == null
      ? null
      : ReportSurveyorPeriodEntity.fromJson(
          json['period'] as Map<String, dynamic>,
        ),
  survey: json['survey'] == null
      ? null
      : ReportSurveyorSurveyEntity.fromJson(
          json['survey'] as Map<String, dynamic>,
        ),
  totalSurveyCompleted: (json['totalSurveyCompleted'] as num?)?.toInt(),
  reportDownloadUrl: json['reportDownloadUrl'] as String?,
);

Map<String, dynamic> _$AmilSurveyorReportEntityToJson(
  _AmilSurveyorReportEntity instance,
) => <String, dynamic>{
  'amilInfo': instance.amilInfo,
  'period': instance.period,
  'survey': instance.survey,
  'totalSurveyCompleted': instance.totalSurveyCompleted,
  'reportDownloadUrl': instance.reportDownloadUrl,
};

_ReportSurveyorPeriodEntity _$ReportSurveyorPeriodEntityFromJson(
  Map<String, dynamic> json,
) => _ReportSurveyorPeriodEntity(
  month: (json['month'] as num?)?.toInt(),
  year: (json['year'] as num?)?.toInt(),
  startDate: json['startDate'] as String?,
  endDate: json['endDate'] as String?,
);

Map<String, dynamic> _$ReportSurveyorPeriodEntityToJson(
  _ReportSurveyorPeriodEntity instance,
) => <String, dynamic>{
  'month': instance.month,
  'year': instance.year,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
};

_ReportSurveyorSurveyEntity _$ReportSurveyorSurveyEntityFromJson(
  Map<String, dynamic> json,
) => _ReportSurveyorSurveyEntity(
  totalSurvey: (json['totalSurvey'] as num?)?.toInt(),
  completed: (json['completed'] as num?)?.toInt(),
  pendingReview: (json['pendingReview'] as num?)?.toInt(),
  draft: (json['draft'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReportSurveyorSurveyEntityToJson(
  _ReportSurveyorSurveyEntity instance,
) => <String, dynamic>{
  'totalSurvey': instance.totalSurvey,
  'completed': instance.completed,
  'pendingReview': instance.pendingReview,
  'draft': instance.draft,
};
