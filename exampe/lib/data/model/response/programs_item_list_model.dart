import '../../../domain/entity/response/programs_item_list_entity.dart';

class ProgramsItemListModel {
  final int? id;
  final String? name;
  final String? description;
  final int? targetAmount;
  final bool? isZakatFitrah;
  final String? bannerUrl;
  final bool? isActive;
  final String? endDate;
  final double? percentTarget;
  final List<String>? donatur;

  ProgramsItemListModel({
    this.id,
    this.name,
    this.description,
    this.targetAmount,
    this.isZakatFitrah,
    this.bannerUrl,
    this.isActive,
    this.endDate,
    this.percentTarget,
    this.donatur,
  });

  factory ProgramsItemListModel.fromJson(Map<String, dynamic> json) {
    return ProgramsItemListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      targetAmount: json['targetAmount'] as int?,
      isZakatFitrah: json['isZakatFitrah'] as bool?,
      bannerUrl: json['bannerUrl'] as String?,
      isActive: json['isActive'] as bool?,
      endDate: json['endDate'] as String?,
      percentTarget: (json['percentTarget'] as num?)?.toDouble(),
      donatur: (json['donatur'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'targetAmount': targetAmount,
      'isZakatFitrah': isZakatFitrah,
      'bannerUrl': bannerUrl,
      'isActive': isActive,
      'endDate': endDate,
      'percentTarget': percentTarget,
      'donatur': donatur,
    };
  }

  factory ProgramsItemListModel.fromEntity(ProgramsItemListEntity entity) {
    return ProgramsItemListModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      targetAmount: entity.targetAmount,
      isZakatFitrah: entity.isZakatFitrah,
      bannerUrl: entity.bannerUrl,
      isActive: entity.isActive,
      endDate: entity.endDate,
      percentTarget: entity.percentTarget,
      donatur: entity.donatur,
    );
  }

  ProgramsItemListEntity toEntity() {
    return ProgramsItemListEntity(
      id: id,
      name: name,
      description: description,
      targetAmount: targetAmount,
      isZakatFitrah: isZakatFitrah,
      bannerUrl: bannerUrl,
      isActive: isActive,
      endDate: endDate,
      percentTarget: percentTarget,
      donatur: donatur,
    );
  }
}
