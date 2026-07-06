import 'package:freezed_annotation/freezed_annotation.dart';

part 'amil_penghimpun_dashboard_response_entity.freezed.dart';
part 'amil_penghimpun_dashboard_response_entity.g.dart';

@Freezed()
abstract class AmilPenghimpunDashboardResponseEntity
    with _$AmilPenghimpunDashboardResponseEntity {
  const factory AmilPenghimpunDashboardResponseEntity({
    AmilInfoEntity? amilInfo,
    AmilKpiEntity? kpi,
    List<AmilActivityFeedEntity>? activityFeed,
  }) = _AmilPenghimpunDashboardResponseEntity;

  factory AmilPenghimpunDashboardResponseEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$AmilPenghimpunDashboardResponseEntityFromJson(json);
}

@Freezed()
abstract class AmilInfoEntity with _$AmilInfoEntity {
  const factory AmilInfoEntity({
    int? id,
    String? name,
    String? amilType,
    int? upzId,
  }) = _AmilInfoEntity;

  factory AmilInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilInfoEntityFromJson(json);
}

@Freezed()
abstract class AmilKpiEntity with _$AmilKpiEntity {
  const factory AmilKpiEntity({
    int? todayCollection,
    int? monthlyTarget,
    int? activeTasksCount,
  }) = _AmilKpiEntity;

  factory AmilKpiEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilKpiEntityFromJson(json);
}

@Freezed()
abstract class AmilActivityFeedEntity with _$AmilActivityFeedEntity {
  const factory AmilActivityFeedEntity({
    int? id,
    String? type,
    String? description,
    int? amount,
    String? createdAt,
  }) = _AmilActivityFeedEntity;

  factory AmilActivityFeedEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilActivityFeedEntityFromJson(json);
}
