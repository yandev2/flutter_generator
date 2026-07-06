import '../../../domain/entity/response/amil_surveyor_report_entity.dart';
import 'amil_penghimpun_dashboard_response_model.dart';

class AmilSurveyorReportModel {
  final AmilInfoModel? amilInfo;
  final ReportSurveyorPeriodModel? period;
  final ReportSurveyorSurveyModel? survey;
  final int? totalSurveyCompleted;
  final String? reportDownloadUrl;

  AmilSurveyorReportModel({
    this.amilInfo,
    this.period,
    this.survey,
    this.totalSurveyCompleted,
    this.reportDownloadUrl,
  });

  factory AmilSurveyorReportModel.fromJson(Map<String, dynamic> json) {
    return AmilSurveyorReportModel(
      amilInfo: json['amilInfo'] is Map<String, dynamic>
          ? AmilInfoModel.fromJson(json['amilInfo'] as Map<String, dynamic>)
          : null,
      period: json['period'] is Map<String, dynamic>
          ? ReportSurveyorPeriodModel.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      survey: json['survey'] is Map<String, dynamic>
          ? ReportSurveyorSurveyModel.fromJson(json['survey'] as Map<String, dynamic>)
          : null,
      totalSurveyCompleted: json['totalSurveyCompleted'] as int?,
      reportDownloadUrl: json['reportDownloadUrl'] as String?,
    );
  }

  AmilSurveyorReportEntity toEntity() {
    return AmilSurveyorReportEntity(
      amilInfo: amilInfo?.toEntity(),
      period: period?.toEntity(),
      survey: survey?.toEntity(),
      totalSurveyCompleted: totalSurveyCompleted,
      reportDownloadUrl: reportDownloadUrl,
    );
  }
}

class ReportSurveyorPeriodModel {
  final int? month;
  final int? year;
  final String? startDate;
  final String? endDate;

  ReportSurveyorPeriodModel({this.month, this.year, this.startDate, this.endDate});

  factory ReportSurveyorPeriodModel.fromJson(Map<String, dynamic> json) {
    return ReportSurveyorPeriodModel(
      month: json['month'] as int?,
      year: json['year'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );
  }

  ReportSurveyorPeriodEntity toEntity() {
    return ReportSurveyorPeriodEntity(
      month: month,
      year: year,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

class ReportSurveyorSurveyModel {
  final int? totalSurvey;
  final int? completed;
  final int? pendingReview;
  final int? draft;

  ReportSurveyorSurveyModel({this.totalSurvey, this.completed, this.pendingReview, this.draft});

  factory ReportSurveyorSurveyModel.fromJson(Map<String, dynamic> json) {
    return ReportSurveyorSurveyModel(
      totalSurvey: json['totalSurvey'] as int?,
      completed: json['completed'] as int?,
      pendingReview: json['pendingReview'] as int?,
      draft: json['draft'] as int?,
    );
  }

  ReportSurveyorSurveyEntity toEntity() {
    return ReportSurveyorSurveyEntity(
      totalSurvey: totalSurvey,
      completed: completed,
      pendingReview: pendingReview,
      draft: draft,
    );
  }
}
