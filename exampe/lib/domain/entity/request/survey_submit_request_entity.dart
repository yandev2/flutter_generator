import 'package:freezed_annotation/freezed_annotation.dart';
import '../mustahik_entity.dart';

part 'survey_submit_request_entity.freezed.dart';
part 'survey_submit_request_entity.g.dart';

@freezed
abstract class SurveySubmitRequestEntity with _$SurveySubmitRequestEntity {
  const factory SurveySubmitRequestEntity({
    int? surveyId,
    int? mustahikId,
    String? status,
    MustahikEntity? mustahikData,
    SurveyDataEntity? surveyData,
    List<FamilyMemberEntity>? familyMembers,
    List<HousePhotoMetaEntity>? housePhotosMeta,
    String? surveyProofPath,
    List<String>? housePhotoPaths,
  }) = _SurveySubmitRequestEntity;

  factory SurveySubmitRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$SurveySubmitRequestEntityFromJson(json);
}

@freezed
abstract class SurveyDataEntity with _$SurveyDataEntity {
  const factory SurveyDataEntity({
    String? recommendedAsnaf,
    String? assistanceGoal,
    double? latitude,
    double? longitude,
    String? surveyDate,
    String? surveyorNotes,
    int? familySize,
  }) = _SurveyDataEntity;

  factory SurveyDataEntity.fromJson(Map<String, dynamic> json) => _$SurveyDataEntityFromJson(json);
}

@freezed
abstract class HousePhotoMetaEntity with _$HousePhotoMetaEntity {
  const factory HousePhotoMetaEntity({String? description}) = _HousePhotoMetaEntity;

  factory HousePhotoMetaEntity.fromJson(Map<String, dynamic> json) =>
      _$HousePhotoMetaEntityFromJson(json);
}

@freezed
abstract class FamilyMemberEntity with _$FamilyMemberEntity {
  const factory FamilyMemberEntity({
    String? name,
    String? relationship,
    int? age,
    String? occupation,
    String? education,
  }) = _FamilyMemberEntity;

  factory FamilyMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberEntityFromJson(json);
}
