import '../../../domain/entity/response/force_majeure_entity.dart';

class ForceMajeureModel {
  final int? id;
  final String? title;
  final String? description;
  final int? budgetCeiling;
  final int? spentAmount;
  final String? status;
  final double? latitude;
  final double? longitude;
  final String? startDate;
  final String? endDate;

  ForceMajeureModel({
    this.id,
    this.title,
    this.description,
    this.budgetCeiling,
    this.spentAmount,
    this.status,
    this.latitude,
    this.longitude,
    this.startDate,
    this.endDate,
  });

  factory ForceMajeureModel.fromJson(Map<String, dynamic> json) {
    return ForceMajeureModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      budgetCeiling: json['budgetCeiling'] as int?,
      spentAmount: json['spentAmount'] as int?,
      status: json['status'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'budgetCeiling': budgetCeiling,
      'spentAmount': spentAmount,
      'status': status,
      'latitude': latitude,
      'longitude': longitude,
      'startDate': startDate,
      'endDate': endDate,
    };
  }

  ForceMajeureEntity toEntity() {
    return ForceMajeureEntity(
      id: id,
      title: title,
      description: description,
      budgetCeiling: budgetCeiling,
      spentAmount: spentAmount,
      status: status,
      latitude: latitude,
      longitude: longitude,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
