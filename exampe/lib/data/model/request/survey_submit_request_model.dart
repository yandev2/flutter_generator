import 'dart:convert';

import '../../../domain/entity/request/survey_submit_request_entity.dart';
import '../mustahik_model.dart';

///   - "surveyProof"   → [surveyProofPath]
///   - "housePhotos"   → [housePhotoPaths] (multi-file, field name sama semua)
class SurveySubmitRequestModel {
  final int? surveyId;
  final int? mustahikId;
  final String? status;
  final MustahikModel? mustahikData;
  final SurveyDataModel? surveyData;
  final List<FamilyMemberModel>? familyMembers;
  final List<HousePhotoMetaModel>? housePhotosMeta;
  final String? clientUuid;
  final String? surveyProofPath;
  final List<String>? housePhotoPaths;

  SurveySubmitRequestModel({
    this.clientUuid,
    this.surveyId,
    this.mustahikId,
    this.status,
    this.mustahikData,
    this.surveyData,
    this.familyMembers,
    this.housePhotosMeta,
    this.surveyProofPath,
    this.housePhotoPaths,
  });

  factory SurveySubmitRequestModel.fromJson(Map<String, dynamic> json) {
    return SurveySubmitRequestModel(
      clientUuid: json['clientUuid'] as String?,
      surveyId: json['surveyId'] as int?,
      mustahikId: json['mustahikId'] as int?,
      status: json['status'] as String?,
      mustahikData: json['mustahikData'] != null
          ? MustahikModel.fromJson(json['mustahikData'] as Map<String, dynamic>)
          : null,
      surveyData: json['surveyData'] != null
          ? SurveyDataModel.fromJson(json['surveyData'] as Map<String, dynamic>)
          : null,
      housePhotosMeta: (json['housePhotosMeta'] as List<dynamic>?)
          ?.map((e) => HousePhotoMetaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      familyMembers: (json['familyMembers'] as List<dynamic>?)
          ?.map((e) => FamilyMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      surveyProofPath: json['surveyProofPath'] as String?,
      housePhotoPaths:
          (json['housePhotoPaths'] as List<dynamic>?)?.cast<String>() ??
          _legacyHousePhotoPaths(json),
    );
  }

  Map<String, String> toMultipartFields() {
    final fields = <String, String>{};

    if (clientUuid != null) fields['client_uuid'] = clientUuid!;
    if (mustahikId != null) fields['mustahikId'] = mustahikId!.toString();
    if (mustahikData != null) {
      fields['mustahikData'] = jsonEncode(mustahikData!.toJson());
    }
    if (surveyData != null) {
      fields['surveyData'] = jsonEncode(surveyData!.toJson());
    }
    if (familyMembers != null && familyMembers!.isNotEmpty) {
      fields['familyMembers'] = jsonEncode(familyMembers!.map((e) => e.toJson()).toList());
    }
    if (housePhotosMeta != null && housePhotosMeta!.isNotEmpty) {
      fields['housePhotosMeta'] = jsonEncode(housePhotosMeta!.map((e) => e.toJson()).toList());
    }

    return fields;
  }

  Map<String, dynamic> toFileFields() {
    final files = <String, dynamic>{};

    if (surveyProofPath != null &&
        surveyProofPath!.isNotEmpty &&
        !surveyProofPath!.startsWith('http')) {
      files['surveyProof'] = surveyProofPath!;
    }

    if (housePhotoPaths != null && housePhotoPaths!.isNotEmpty) {
      final localPaths = housePhotoPaths!
          .where((p) => p.isNotEmpty && !p.startsWith('http'))
          .toList();
      if (localPaths.isNotEmpty) {
        files['housePhotos'] = localPaths;
      }
    }

    return files;
  }

  factory SurveySubmitRequestModel.fromEntity(SurveySubmitRequestEntity entity) {
    return SurveySubmitRequestModel(
      surveyId: entity.surveyId,
      mustahikId: entity.mustahikId,
      status: entity.status,
      mustahikData: entity.mustahikData != null
          ? MustahikModel.fromEntity(entity.mustahikData!)
          : null,
      surveyData: entity.surveyData != null ? SurveyDataModel.fromEntity(entity.surveyData!) : null,
      housePhotosMeta: entity.housePhotosMeta
          ?.map((e) => HousePhotoMetaModel.fromEntity(e))
          .toList(),
      familyMembers: entity.familyMembers?.map((e) => FamilyMemberModel.fromEntity(e)).toList(),
      surveyProofPath: entity.surveyProofPath,
      housePhotoPaths: entity.housePhotoPaths,
    );
  }

  SurveySubmitRequestEntity toEntity() {
    return SurveySubmitRequestEntity(
      surveyId: surveyId,
      mustahikId: mustahikId,
      status: status,
      mustahikData: mustahikData?.toEntity(),
      surveyData: surveyData?.toEntity(),
      housePhotosMeta: housePhotosMeta?.map((e) => e.toEntity()).toList(),
      familyMembers: familyMembers?.map((e) => e.toEntity()).toList(),
      surveyProofPath: surveyProofPath,
      housePhotoPaths: housePhotoPaths,
    );
  }

  /// Serialisasi untuk outbox offline (path lokal foto disimpan sebagai list).
  Map<String, dynamic> toPayloadJson() {
    return {
      'clientUuid': clientUuid,
      'surveyId': surveyId,
      'mustahikId': mustahikId,
      'status': status,
      'mustahikData': mustahikData?.toJson(),
      'surveyData': surveyData?.toJson(),
      'familyMembers': familyMembers?.map((e) => e.toJson()).toList(),
      'housePhotosMeta': housePhotosMeta?.map((e) => e.toJson()).toList(),
      'surveyProofPath': surveyProofPath,
      'housePhotoPaths': housePhotoPaths,
    };
  }

  static List<String>? _legacyHousePhotoPaths(Map<String, dynamic> json) {
    final photos = json['housePhotos'];
    if (photos is! List) return null;
    return photos
        .map((e) => e is Map ? e['photoUrl'] as String? : null)
        .whereType<String>()
        .toList();
  }
}

// ─── Sub-models ───────────────────────────────────────────────────────────────

class SurveyDataModel {
  final String? recommendedAsnaf;
  final String? assistanceGoal;
  final double? latitude;
  final double? longitude;
  final String? surveyDate;
  final String? surveyorNotes;
  final int? familySize;

  SurveyDataModel({
    this.recommendedAsnaf,
    this.assistanceGoal,
    this.latitude,
    this.longitude,
    this.surveyDate,
    this.surveyorNotes,
    this.familySize,
  });

  factory SurveyDataModel.fromJson(Map<String, dynamic> json) {
    return SurveyDataModel(
      recommendedAsnaf: json['recommendedAsnaf'] as String?,
      assistanceGoal: json['assistanceGoal'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      surveyDate: json['surveyDate'] as String?,
      surveyorNotes: json['surveyorNotes'] as String?,
      familySize: json['familySize'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendedAsnaf': recommendedAsnaf,
      'assistanceGoal': assistanceGoal,
      'latitude': latitude,
      'longitude': longitude,
      'surveyDate': surveyDate,
      'surveyorNotes': surveyorNotes,
      'familySize': familySize,
    };
  }

  factory SurveyDataModel.fromEntity(SurveyDataEntity entity) {
    return SurveyDataModel(
      recommendedAsnaf: entity.recommendedAsnaf,
      assistanceGoal: entity.assistanceGoal,
      latitude: entity.latitude,
      longitude: entity.longitude,
      surveyDate: entity.surveyDate,
      surveyorNotes: entity.surveyorNotes,
      familySize: entity.familySize,
    );
  }

  SurveyDataEntity toEntity() {
    return SurveyDataEntity(
      recommendedAsnaf: recommendedAsnaf,
      assistanceGoal: assistanceGoal,
      latitude: latitude,
      longitude: longitude,
      surveyDate: surveyDate,
      surveyorNotes: surveyorNotes,
      familySize: familySize,
    );
  }
}

/// Metadata foto rumah (hanya deskripsi — file dikirim terpisah)
class HousePhotoMetaModel {
  final String? description;

  HousePhotoMetaModel({this.description});

  factory HousePhotoMetaModel.fromJson(Map<String, dynamic> json) {
    return HousePhotoMetaModel(description: json['description'] as String?);
  }

  Map<String, dynamic> toJson() => {'description': description};

  factory HousePhotoMetaModel.fromEntity(HousePhotoMetaEntity entity) {
    return HousePhotoMetaModel(description: entity.description);
  }

  HousePhotoMetaEntity toEntity() {
    return HousePhotoMetaEntity(description: description);
  }
}

class FamilyMemberModel {
  final String? name;
  final String? relationship;
  final int? age;
  final String? occupation;
  final String? education;

  FamilyMemberModel({this.name, this.relationship, this.age, this.occupation, this.education});

  factory FamilyMemberModel.fromJson(Map<String, dynamic> json) {
    return FamilyMemberModel(
      name: json['name'] as String?,
      relationship: json['relationship'] as String?,
      age: json['age'] as int?,
      occupation: json['occupation'] as String?,
      education: json['education'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'relationship': relationship,
      'age': age,
      'occupation': occupation,
      'education': education,
    };
  }

  factory FamilyMemberModel.fromEntity(FamilyMemberEntity entity) {
    return FamilyMemberModel(
      name: entity.name,
      relationship: entity.relationship,
      age: entity.age,
      occupation: entity.occupation,
      education: entity.education,
    );
  }

  FamilyMemberEntity toEntity() {
    return FamilyMemberEntity(
      name: name,
      relationship: relationship,
      age: age,
      occupation: occupation,
      education: education,
    );
  }
}
