import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_data_entity.dart';
import 'muzakki_contribution_summary_entity.dart';
import 'programs_item_list_entity.dart';

part 'muzakki_dashboard_response_entity.freezed.dart';
part 'muzakki_dashboard_response_entity.g.dart';

/// Response GET /api/mobile/v1/muzakki/dashboard
@freezed
abstract class MuzakkiDashboardResponseEntity
    with _$MuzakkiDashboardResponseEntity {
  const factory MuzakkiDashboardResponseEntity({
    UserDataEntity? user,
    MuzakkiContributionSummaryEntity? contributionSummary,
    List<ProgramsItemListEntity>? featuredPrograms,
  }) = _MuzakkiDashboardResponseEntity;

  factory MuzakkiDashboardResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$MuzakkiDashboardResponseEntityFromJson(json);
}
