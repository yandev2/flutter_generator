// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_task_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurveyTaskDetailEntity _$SurveyTaskDetailEntityFromJson(
  Map<String, dynamic> json,
) => _SurveyTaskDetailEntity(
  surveyId: (json['surveyId'] as num?)?.toInt(),
  mustahikId: (json['mustahikId'] as num?)?.toInt(),
  status: json['status'] as String?,
  mustahikData: json['mustahikData'] == null
      ? null
      : MustahikEntity.fromJson(json['mustahikData'] as Map<String, dynamic>),
  surveyData: json['surveyData'] == null
      ? null
      : SurveyTaskDetailSurveyDataEntity.fromJson(
          json['surveyData'] as Map<String, dynamic>,
        ),
  housePhotos: (json['housePhotos'] as List<dynamic>?)
      ?.map((e) => SurveyHousePhotoEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  familyMembers: (json['familyMembers'] as List<dynamic>?)
      ?.map((e) => FamilyMemberEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SurveyTaskDetailEntityToJson(
  _SurveyTaskDetailEntity instance,
) => <String, dynamic>{
  'surveyId': instance.surveyId,
  'mustahikId': instance.mustahikId,
  'status': instance.status,
  'mustahikData': instance.mustahikData,
  'surveyData': instance.surveyData,
  'housePhotos': instance.housePhotos,
  'familyMembers': instance.familyMembers,
};

_SurveyTaskDetailSurveyDataEntity _$SurveyTaskDetailSurveyDataEntityFromJson(
  Map<String, dynamic> json,
) => _SurveyTaskDetailSurveyDataEntity(
  recommendedAsnaf: json['recommendedAsnaf'] as String?,
  assistanceGoal: json['assistanceGoal'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  surveyDate: json['surveyDate'] as String?,
  surveyorNotes: json['surveyorNotes'] as String?,
  surveyProofUrl: json['surveyProofUrl'] as String?,
  familySize: (json['familySize'] as num?)?.toInt(),
);

Map<String, dynamic> _$SurveyTaskDetailSurveyDataEntityToJson(
  _SurveyTaskDetailSurveyDataEntity instance,
) => <String, dynamic>{
  'recommendedAsnaf': instance.recommendedAsnaf,
  'assistanceGoal': instance.assistanceGoal,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'surveyDate': instance.surveyDate,
  'surveyorNotes': instance.surveyorNotes,
  'surveyProofUrl': instance.surveyProofUrl,
  'familySize': instance.familySize,
};

_SurveyHousePhotoEntity _$SurveyHousePhotoEntityFromJson(
  Map<String, dynamic> json,
) => _SurveyHousePhotoEntity(
  photoUrl: json['photoUrl'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$SurveyHousePhotoEntityToJson(
  _SurveyHousePhotoEntity instance,
) => <String, dynamic>{
  'photoUrl': instance.photoUrl,
  'description': instance.description,
};
