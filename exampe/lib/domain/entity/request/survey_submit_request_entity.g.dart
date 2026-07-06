// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_submit_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurveySubmitRequestEntity _$SurveySubmitRequestEntityFromJson(
  Map<String, dynamic> json,
) => _SurveySubmitRequestEntity(
  surveyId: (json['surveyId'] as num?)?.toInt(),
  mustahikId: (json['mustahikId'] as num?)?.toInt(),
  status: json['status'] as String?,
  mustahikData: json['mustahikData'] == null
      ? null
      : MustahikEntity.fromJson(json['mustahikData'] as Map<String, dynamic>),
  surveyData: json['surveyData'] == null
      ? null
      : SurveyDataEntity.fromJson(json['surveyData'] as Map<String, dynamic>),
  familyMembers: (json['familyMembers'] as List<dynamic>?)
      ?.map((e) => FamilyMemberEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  housePhotosMeta: (json['housePhotosMeta'] as List<dynamic>?)
      ?.map((e) => HousePhotoMetaEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  surveyProofPath: json['surveyProofPath'] as String?,
  housePhotoPaths: (json['housePhotoPaths'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SurveySubmitRequestEntityToJson(
  _SurveySubmitRequestEntity instance,
) => <String, dynamic>{
  'surveyId': instance.surveyId,
  'mustahikId': instance.mustahikId,
  'status': instance.status,
  'mustahikData': instance.mustahikData,
  'surveyData': instance.surveyData,
  'familyMembers': instance.familyMembers,
  'housePhotosMeta': instance.housePhotosMeta,
  'surveyProofPath': instance.surveyProofPath,
  'housePhotoPaths': instance.housePhotoPaths,
};

_SurveyDataEntity _$SurveyDataEntityFromJson(Map<String, dynamic> json) =>
    _SurveyDataEntity(
      recommendedAsnaf: json['recommendedAsnaf'] as String?,
      assistanceGoal: json['assistanceGoal'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      surveyDate: json['surveyDate'] as String?,
      surveyorNotes: json['surveyorNotes'] as String?,
      familySize: (json['familySize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SurveyDataEntityToJson(_SurveyDataEntity instance) =>
    <String, dynamic>{
      'recommendedAsnaf': instance.recommendedAsnaf,
      'assistanceGoal': instance.assistanceGoal,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'surveyDate': instance.surveyDate,
      'surveyorNotes': instance.surveyorNotes,
      'familySize': instance.familySize,
    };

_HousePhotoMetaEntity _$HousePhotoMetaEntityFromJson(
  Map<String, dynamic> json,
) => _HousePhotoMetaEntity(description: json['description'] as String?);

Map<String, dynamic> _$HousePhotoMetaEntityToJson(
  _HousePhotoMetaEntity instance,
) => <String, dynamic>{'description': instance.description};

_FamilyMemberEntity _$FamilyMemberEntityFromJson(Map<String, dynamic> json) =>
    _FamilyMemberEntity(
      name: json['name'] as String?,
      relationship: json['relationship'] as String?,
      age: (json['age'] as num?)?.toInt(),
      occupation: json['occupation'] as String?,
      education: json['education'] as String?,
    );

Map<String, dynamic> _$FamilyMemberEntityToJson(_FamilyMemberEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'relationship': instance.relationship,
      'age': instance.age,
      'occupation': instance.occupation,
      'education': instance.education,
    };
