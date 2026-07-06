import 'package:freezed_annotation/freezed_annotation.dart';
import '../mustahik_entity.dart';
import '../request/survey_submit_request_entity.dart';

part 'survey_task_detail_entity.freezed.dart';
part 'survey_task_detail_entity.g.dart';

/// Response GET /api/mobile/v1/survey/tasks/:id
@Freezed()
abstract class SurveyTaskDetailEntity with _$SurveyTaskDetailEntity {
  const factory SurveyTaskDetailEntity({
    int? surveyId,
    int? mustahikId,
    String? status,
    MustahikEntity? mustahikData,
    SurveyTaskDetailSurveyDataEntity? surveyData,
    List<SurveyHousePhotoEntity>? housePhotos,
    List<FamilyMemberEntity>? familyMembers,
  }) = _SurveyTaskDetailEntity;

  factory SurveyTaskDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$SurveyTaskDetailEntityFromJson(json);
}

@Freezed()
abstract class SurveyTaskDetailSurveyDataEntity with _$SurveyTaskDetailSurveyDataEntity {
  const factory SurveyTaskDetailSurveyDataEntity({
    String? recommendedAsnaf,
    String? assistanceGoal,
    double? latitude,
    double? longitude,
    String? surveyDate,
    String? surveyorNotes,
    String? surveyProofUrl,
    int? familySize,
  }) = _SurveyTaskDetailSurveyDataEntity;

  factory SurveyTaskDetailSurveyDataEntity.fromJson(Map<String, dynamic> json) =>
      _$SurveyTaskDetailSurveyDataEntityFromJson(json);
}

@Freezed()
abstract class SurveyHousePhotoEntity with _$SurveyHousePhotoEntity {
  const factory SurveyHousePhotoEntity({String? photoUrl, String? description}) =
      _SurveyHousePhotoEntity;

  factory SurveyHousePhotoEntity.fromJson(Map<String, dynamic> json) =>
      _$SurveyHousePhotoEntityFromJson(json);
}
