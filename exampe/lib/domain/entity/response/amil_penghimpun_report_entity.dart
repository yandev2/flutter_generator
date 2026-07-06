import 'package:freezed_annotation/freezed_annotation.dart';
import 'amil_penghimpun_dashboard_response_entity.dart';

part 'amil_penghimpun_report_entity.freezed.dart';
part 'amil_penghimpun_report_entity.g.dart';

/// Response GET /api/mobile/v1/amil/reports?month=&year=
@Freezed()
abstract class AmilPenghimpunReportEntity with _$AmilPenghimpunReportEntity {
  const factory AmilPenghimpunReportEntity({
    AmilInfoEntity? amilInfo,
    ReportAmilPenghimpunPeriodEntity? period,
    ReportAmilPenghimpunCollectionEntity? collection,
    String? reportDownloadUrl,
  }) = _AmilPenghimpunReportEntity;

  factory AmilPenghimpunReportEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilPenghimpunReportEntityFromJson(json);
}

@Freezed()
abstract class ReportAmilPenghimpunPeriodEntity
    with _$ReportAmilPenghimpunPeriodEntity {
  const factory ReportAmilPenghimpunPeriodEntity({
    int? month,
    int? year,
    String? startDate,
    String? endDate,
  }) = _ReportAmilPenghimpunPeriodEntity;

  factory ReportAmilPenghimpunPeriodEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ReportAmilPenghimpunPeriodEntityFromJson(json);
}

@Freezed()
abstract class ReportAmilPenghimpunCollectionEntity
    with _$ReportAmilPenghimpunCollectionEntity {
  const factory ReportAmilPenghimpunCollectionEntity({
    int? totalCollectedAmount,
    int? totalDonationCount,
    int? naturaCount,
    int? cashCount,
    int? pickupCompleted,
    int? pickupFailed,
    int? pickupActive,
  }) = _ReportAmilPenghimpunCollectionEntity;

  factory ReportAmilPenghimpunCollectionEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ReportAmilPenghimpunCollectionEntityFromJson(json);
}
