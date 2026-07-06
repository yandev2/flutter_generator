// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muzakki_dashboard_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuzakkiDashboardResponseEntity _$MuzakkiDashboardResponseEntityFromJson(
  Map<String, dynamic> json,
) => _MuzakkiDashboardResponseEntity(
  user: json['user'] == null
      ? null
      : UserDataEntity.fromJson(json['user'] as Map<String, dynamic>),
  contributionSummary: json['contributionSummary'] == null
      ? null
      : MuzakkiContributionSummaryEntity.fromJson(
          json['contributionSummary'] as Map<String, dynamic>,
        ),
  featuredPrograms: (json['featuredPrograms'] as List<dynamic>?)
      ?.map((e) => ProgramsItemListEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MuzakkiDashboardResponseEntityToJson(
  _MuzakkiDashboardResponseEntity instance,
) => <String, dynamic>{
  'user': instance.user,
  'contributionSummary': instance.contributionSummary,
  'featuredPrograms': instance.featuredPrograms,
};
