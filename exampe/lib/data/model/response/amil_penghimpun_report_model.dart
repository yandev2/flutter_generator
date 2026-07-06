import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/amil_penghimpun_report_entity.dart';

import 'amil_penghimpun_dashboard_response_model.dart';

class AmilPenghimpunReportModel {
  final AmilInfoModel? amilInfo;
  final ReportAmilPenghimpunPeriodModel? period;
  final ReportAmilPenghimpunCollectionModel? collection;
  final String? reportDownloadUrl;

  AmilPenghimpunReportModel({this.amilInfo, this.period, this.collection, this.reportDownloadUrl});

  factory AmilPenghimpunReportModel.fromJson(Map<String, dynamic> json) {
    return AmilPenghimpunReportModel(
      amilInfo: json['amilInfo'] is Map<String, dynamic>
          ? AmilInfoModel.fromJson(json['amilInfo'] as Map<String, dynamic>)
          : null,
      period: json['period'] is Map<String, dynamic>
          ? ReportAmilPenghimpunPeriodModel.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      collection: json['collection'] is Map<String, dynamic>
          ? ReportAmilPenghimpunCollectionModel.fromJson(json['collection'] as Map<String, dynamic>)
          : null,
      reportDownloadUrl: json['reportDownloadUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amilInfo': amilInfo?.toJson(),
      'period': period?.toJson(),
      'collection': collection?.toJson(),
      'reportDownloadUrl': reportDownloadUrl,
    };
  }

  AmilPenghimpunReportEntity toEntity() {
    return AmilPenghimpunReportEntity(
      amilInfo: amilInfo?.toEntity(),
      period: period?.toEntity(),
      collection: collection?.toEntity(),
      reportDownloadUrl: reportDownloadUrl,
    );
  }
}

class ReportAmilPenghimpunPeriodModel {
  final int? month;
  final int? year;
  final String? startDate;
  final String? endDate;

  ReportAmilPenghimpunPeriodModel({this.month, this.year, this.startDate, this.endDate});

  factory ReportAmilPenghimpunPeriodModel.fromJson(Map<String, dynamic> json) {
    return ReportAmilPenghimpunPeriodModel(
      month: json['month'] as int?,
      year: json['year'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'month': month, 'year': year, 'startDate': startDate, 'endDate': endDate};
  }

  ReportAmilPenghimpunPeriodEntity toEntity() {
    return ReportAmilPenghimpunPeriodEntity(
      month: month,
      year: year,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

class ReportAmilPenghimpunCollectionModel {
  final int? totalCollectedAmount;
  final int? totalDonationCount;
  final int? naturaCount;
  final int? cashCount;
  final int? pickupCompleted;
  final int? pickupFailed;
  final int? pickupActive;

  ReportAmilPenghimpunCollectionModel({
    this.totalCollectedAmount,
    this.totalDonationCount,
    this.naturaCount,
    this.cashCount,
    this.pickupCompleted,
    this.pickupFailed,
    this.pickupActive,
  });

  factory ReportAmilPenghimpunCollectionModel.fromJson(Map<String, dynamic> json) {
    return ReportAmilPenghimpunCollectionModel(
      totalCollectedAmount: json['totalCollectedAmount'] as int?,
      totalDonationCount: json['totalDonationCount'] as int?,
      naturaCount: json['naturaCount'] as int?,
      cashCount: json['cashCount'] as int?,
      pickupCompleted: json['pickupCompleted'] as int?,
      pickupFailed: json['pickupFailed'] as int?,
      pickupActive: json['pickupActive'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCollectedAmount': totalCollectedAmount,
      'totalDonationCount': totalDonationCount,
      'naturaCount': naturaCount,
      'cashCount': cashCount,
      'pickupCompleted': pickupCompleted,
      'pickupFailed': pickupFailed,
      'pickupActive': pickupActive,
    };
  }

  ReportAmilPenghimpunCollectionEntity toEntity() {
    return ReportAmilPenghimpunCollectionEntity(
      totalCollectedAmount: totalCollectedAmount,
      totalDonationCount: totalDonationCount,
      naturaCount: naturaCount,
      cashCount: cashCount,
      pickupCompleted: pickupCompleted,
      pickupFailed: pickupFailed,
      pickupActive: pickupActive,
    );
  }
}
