// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amil_penghimpun_dashboard_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AmilPenghimpunDashboardResponseEntity
_$AmilPenghimpunDashboardResponseEntityFromJson(Map<String, dynamic> json) =>
    _AmilPenghimpunDashboardResponseEntity(
      amilInfo: json['amilInfo'] == null
          ? null
          : AmilInfoEntity.fromJson(json['amilInfo'] as Map<String, dynamic>),
      kpi: json['kpi'] == null
          ? null
          : AmilKpiEntity.fromJson(json['kpi'] as Map<String, dynamic>),
      activityFeed: (json['activityFeed'] as List<dynamic>?)
          ?.map(
            (e) => AmilActivityFeedEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$AmilPenghimpunDashboardResponseEntityToJson(
  _AmilPenghimpunDashboardResponseEntity instance,
) => <String, dynamic>{
  'amilInfo': instance.amilInfo,
  'kpi': instance.kpi,
  'activityFeed': instance.activityFeed,
};

_AmilInfoEntity _$AmilInfoEntityFromJson(Map<String, dynamic> json) =>
    _AmilInfoEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      amilType: json['amilType'] as String?,
      upzId: (json['upzId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AmilInfoEntityToJson(_AmilInfoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amilType': instance.amilType,
      'upzId': instance.upzId,
    };

_AmilKpiEntity _$AmilKpiEntityFromJson(Map<String, dynamic> json) =>
    _AmilKpiEntity(
      todayCollection: (json['todayCollection'] as num?)?.toInt(),
      monthlyTarget: (json['monthlyTarget'] as num?)?.toInt(),
      activeTasksCount: (json['activeTasksCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AmilKpiEntityToJson(_AmilKpiEntity instance) =>
    <String, dynamic>{
      'todayCollection': instance.todayCollection,
      'monthlyTarget': instance.monthlyTarget,
      'activeTasksCount': instance.activeTasksCount,
    };

_AmilActivityFeedEntity _$AmilActivityFeedEntityFromJson(
  Map<String, dynamic> json,
) => _AmilActivityFeedEntity(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  description: json['description'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$AmilActivityFeedEntityToJson(
  _AmilActivityFeedEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'description': instance.description,
  'amount': instance.amount,
  'createdAt': instance.createdAt,
};
