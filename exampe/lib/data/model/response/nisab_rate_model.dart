import '../../../domain/entity/response/nisab_rate_entity.dart';

class NisabRateModel {
  final int? id;
  final String? code;
  final String? name;
  final String? unit;
  final double? nisabQuantity;
  final double? pricePerUnit;
  final double? nisabValue;
  final String? updatedAt;

  NisabRateModel({
    this.id,
    this.code,
    this.name,
    this.unit,
    this.nisabQuantity,
    this.pricePerUnit,
    this.nisabValue,
    this.updatedAt,
  });

  factory NisabRateModel.fromJson(Map<String, dynamic> json) {
    return NisabRateModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      nisabQuantity: (json['nisabQuantity'] as num?)?.toDouble(),
      pricePerUnit: (json['pricePerUnit'] as num?)?.toDouble(),
      nisabValue: (json['nisabValue'] as num?)?.toDouble(),
      updatedAt: json['updatedAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'unit': unit,
      'nisabQuantity': nisabQuantity,
      'pricePerUnit': pricePerUnit,
      'nisabValue': nisabValue,
      'updatedAt': updatedAt,
    };
  }

  factory NisabRateModel.fromEntity(NisabRateEntity entity) {
    return NisabRateModel(
      id: entity.id,
      code: entity.code,
      name: entity.name,
      unit: entity.unit,
      nisabQuantity: entity.nisabQuantity,
      pricePerUnit: entity.pricePerUnit,
      nisabValue: entity.nisabValue,
      updatedAt: entity.updatedAt,
    );
  }

  NisabRateEntity toEntity() {
    return NisabRateEntity(
      id: id,
      code: code,
      name: name,
      unit: unit,
      nisabQuantity: nisabQuantity,
      pricePerUnit: pricePerUnit,
      nisabValue: nisabValue,
      updatedAt: updatedAt,
    );
  }
}
