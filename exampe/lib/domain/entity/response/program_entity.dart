import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_entity.freezed.dart';
part 'program_entity.g.dart';

/// Response GET /api/mobile/v1/programs/:id
@Freezed()
abstract class ProgramEntity with _$ProgramEntity {
  const factory ProgramEntity({
    int? id,
    int? fundTypeId,
    String? fundType,
    String? name,
    String? description,
    int? targetAmount,
    double? amilPercentageFee,
    bool? isZakatFitrah,
    String? startDate,
    String? endDate,
    String? bannerUrl,
    String? thumbnailUrl,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
    List<String>? lastDonaturAvatar,
    ProgramStatisticsEntity? statistics,
    ProgramLastDonationEntity? lastDonation,
    List<String>? documentation,
    ProgramDistributionSummaryEntity? distributionSummary,
  }) = _ProgramEntity;

  factory ProgramEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramEntityFromJson(json);
}

@Freezed()
abstract class ProgramStatisticsEntity with _$ProgramStatisticsEntity {
  const factory ProgramStatisticsEntity({
    int? donaturCount,
    int? fundsCollected,
    double? percentTarget,
  }) = _ProgramStatisticsEntity;

  factory ProgramStatisticsEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramStatisticsEntityFromJson(json);
}

@Freezed()
abstract class ProgramLastDonationEntity with _$ProgramLastDonationEntity {
  const factory ProgramLastDonationEntity({int? amount, String? time}) =
      _ProgramLastDonationEntity;

  factory ProgramLastDonationEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramLastDonationEntityFromJson(json);
}

@Freezed()
abstract class ProgramDistributionSummaryEntity
    with _$ProgramDistributionSummaryEntity {
  const factory ProgramDistributionSummaryEntity({
    int? distributed,
    double? totalDistributedPercent,
    int? remainingFunds,
    double? totalRemainingPercent,
    String? lastUpdated,
  }) = _ProgramDistributionSummaryEntity;

  factory ProgramDistributionSummaryEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$ProgramDistributionSummaryEntityFromJson(json);
}
