import 'package:freezed_annotation/freezed_annotation.dart';
import 'amil_penghimpun_dashboard_response_entity.dart';

part 'amil_surveyor_report_entity.freezed.dart';
part 'amil_surveyor_report_entity.g.dart';

@Freezed()
abstract class AmilSurveyorReportEntity with _$AmilSurveyorReportEntity {
  const factory AmilSurveyorReportEntity({
    AmilInfoEntity? amilInfo,
    ReportSurveyorPeriodEntity? period,
    ReportSurveyorSurveyEntity? survey,
    int? totalSurveyCompleted,
    String? reportDownloadUrl,
  }) = _AmilSurveyorReportEntity;

  factory AmilSurveyorReportEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilSurveyorReportEntityFromJson(json);
}

@Freezed()
abstract class ReportSurveyorPeriodEntity with _$ReportSurveyorPeriodEntity {
  const factory ReportSurveyorPeriodEntity({
    int? month,
    int? year,
    String? startDate,
    String? endDate,
  }) = _ReportSurveyorPeriodEntity;

  factory ReportSurveyorPeriodEntity.fromJson(Map<String, dynamic> json) =>
      _$ReportSurveyorPeriodEntityFromJson(json);
}

@Freezed()
abstract class ReportSurveyorSurveyEntity with _$ReportSurveyorSurveyEntity {
  const factory ReportSurveyorSurveyEntity({
    int? totalSurvey,
    int? completed,
    int? pendingReview,
    int? draft,
  }) = _ReportSurveyorSurveyEntity;

  factory ReportSurveyorSurveyEntity.fromJson(Map<String, dynamic> json) =>
      _$ReportSurveyorSurveyEntityFromJson(json);
}
