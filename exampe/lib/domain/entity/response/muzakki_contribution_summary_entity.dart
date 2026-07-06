import 'package:freezed_annotation/freezed_annotation.dart';

part 'muzakki_contribution_summary_entity.freezed.dart';
part 'muzakki_contribution_summary_entity.g.dart';

@Freezed()
abstract class MuzakkiContributionSummaryEntity
    with _$MuzakkiContributionSummaryEntity {
  const factory MuzakkiContributionSummaryEntity({
    int? muzakkiId,
    int? totalZakat,
    int? totalDonasi,
    int? bszCountThisYear,
    String? lastTransactionDate,
  }) = _MuzakkiContributionSummaryEntity;

  factory MuzakkiContributionSummaryEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$MuzakkiContributionSummaryEntityFromJson(json);
}
