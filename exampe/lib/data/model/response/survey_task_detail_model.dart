import '../../../domain/entity/response/survey_task_detail_entity.dart';
import '../mustahik_model.dart';
import '../request/survey_submit_request_model.dart';

class SurveyTaskDetailModel {
  final int? surveyId;
  final int? mustahikId;
  final String? status;
  final MustahikModel? mustahikData;
  final SurveyTaskDetailSurveyDataModel? surveyData;
  final List<SurveyHousePhotoModel>? housePhotos;
  final List<FamilyMemberModel>? familyMembers;

  SurveyTaskDetailModel({
    this.surveyId,
    this.mustahikId,
    this.status,
    this.mustahikData,
    this.surveyData,
    this.housePhotos,
    this.familyMembers,
  });

  factory SurveyTaskDetailModel.fromJson(Map<String, dynamic> json) {
    return SurveyTaskDetailModel(
      surveyId: json['surveyId'] as int?,
      mustahikId: json['mustahikId'] as int?,
      status: json['status'] as String?,
      mustahikData: json['mustahikData'] is Map<String, dynamic>
          ? MustahikModel.fromJson(json['mustahikData'] as Map<String, dynamic>)
          : null,
      surveyData: json['surveyData'] is Map<String, dynamic>
          ? SurveyTaskDetailSurveyDataModel.fromJson(json['surveyData'] as Map<String, dynamic>)
          : null,
      housePhotos: (json['housePhotos'] as List<dynamic>?)
          ?.map((e) => SurveyHousePhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      familyMembers: (json['familyMembers'] as List<dynamic>?)
          ?.map((e) => FamilyMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  SurveyTaskDetailEntity toEntity() {
    return SurveyTaskDetailEntity(
      surveyId: surveyId,
      mustahikId: mustahikId,
      status: status,
      mustahikData: mustahikData?.toEntity(),
      surveyData: surveyData?.toEntity(),
      housePhotos: housePhotos?.map((e) => e.toEntity()).toList(),
      familyMembers: familyMembers?.map((e) => e.toEntity()).toList(),
    );
  }
}

class SurveyTaskDetailSurveyDataModel {
  final String? recommendedAsnaf;
  final String? assistanceGoal;
  final double? latitude;
  final double? longitude;
  final String? surveyDate;
  final String? surveyorNotes;
  final String? surveyProofUrl;
  final int? familySize;

  SurveyTaskDetailSurveyDataModel({
    this.recommendedAsnaf,
    this.assistanceGoal,
    this.latitude,
    this.longitude,
    this.surveyDate,
    this.surveyorNotes,
    this.surveyProofUrl,
    this.familySize,
  });

  factory SurveyTaskDetailSurveyDataModel.fromJson(Map<String, dynamic> json) {
    return SurveyTaskDetailSurveyDataModel(
      recommendedAsnaf: json['recommendedAsnaf'] as String?,
      assistanceGoal: json['assistanceGoal'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      surveyDate: json['surveyDate'] as String?,
      surveyorNotes: json['surveyorNotes'] as String?,
      surveyProofUrl: json['surveyProofUrl'] as String?,
      familySize: json['familySize'] as int?,
    );
  }

  SurveyTaskDetailSurveyDataEntity toEntity() {
    return SurveyTaskDetailSurveyDataEntity(
      recommendedAsnaf: recommendedAsnaf,
      assistanceGoal: assistanceGoal,
      latitude: latitude,
      longitude: longitude,
      surveyDate: surveyDate,
      surveyorNotes: surveyorNotes,
      surveyProofUrl: surveyProofUrl,
      familySize: familySize,
    );
  }
}

class SurveyHousePhotoModel {
  final String? photoUrl;
  final String? description;

  SurveyHousePhotoModel({this.photoUrl, this.description});

  factory SurveyHousePhotoModel.fromJson(Map<String, dynamic> json) {
    return SurveyHousePhotoModel(
      photoUrl: json['photoUrl'] as String?,
      description: json['description'] as String?,
    );
  }

  SurveyHousePhotoEntity toEntity() {
    return SurveyHousePhotoEntity(photoUrl: photoUrl, description: description);
  }
}
