import '../../../domain/entity/response/muzakki_contribution_summary_entity.dart';

class MuzakkiContributionSummaryModel {
  final int? muzakkiId;
  final int? totalZakat;
  final int? totalDonasi;
  final int? bszCountThisYear;
  final String? lastTransactionDate;

  MuzakkiContributionSummaryModel({
    this.muzakkiId,
    this.totalZakat,
    this.totalDonasi,
    this.bszCountThisYear,
    this.lastTransactionDate,
  });

  factory MuzakkiContributionSummaryModel.fromJson(Map<String, dynamic> json) {
    return MuzakkiContributionSummaryModel(
      muzakkiId: json['muzakkiId'] as int?,
      totalZakat: json['totalZakat'] as int?,
      totalDonasi: json['totalDonasi'] as int?,
      bszCountThisYear: json['bszCountThisYear'] as int?,
      lastTransactionDate: json['lastTransactionDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'muzakkiId': muzakkiId,
      'totalZakat': totalZakat,
      'totalDonasi': totalDonasi,
      'bszCountThisYear': bszCountThisYear,
      'lastTransactionDate': lastTransactionDate,
    };
  }

  factory MuzakkiContributionSummaryModel.fromEntity(MuzakkiContributionSummaryEntity entity) {
    return MuzakkiContributionSummaryModel(
      muzakkiId: entity.muzakkiId,
      totalZakat: entity.totalZakat,
      totalDonasi: entity.totalDonasi,
      bszCountThisYear: entity.bszCountThisYear,
      lastTransactionDate: entity.lastTransactionDate,
    );
  }

  MuzakkiContributionSummaryEntity toEntity() {
    return MuzakkiContributionSummaryEntity(
      muzakkiId: muzakkiId,
      totalZakat: totalZakat,
      totalDonasi: totalDonasi,
      bszCountThisYear: bszCountThisYear,
      lastTransactionDate: lastTransactionDate,
    );
  }
}
