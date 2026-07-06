// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programs_item_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProgramsItemListEntity _$ProgramsItemListEntityFromJson(
  Map<String, dynamic> json,
) => _ProgramsItemListEntity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  targetAmount: (json['targetAmount'] as num?)?.toInt(),
  isZakatFitrah: json['isZakatFitrah'] as bool?,
  bannerUrl: json['bannerUrl'] as String?,
  isActive: json['isActive'] as bool?,
  endDate: json['endDate'] as String?,
  percentTarget: (json['percentTarget'] as num?)?.toDouble(),
  donatur: (json['donatur'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ProgramsItemListEntityToJson(
  _ProgramsItemListEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'targetAmount': instance.targetAmount,
  'isZakatFitrah': instance.isZakatFitrah,
  'bannerUrl': instance.bannerUrl,
  'isActive': instance.isActive,
  'endDate': instance.endDate,
  'percentTarget': instance.percentTarget,
  'donatur': instance.donatur,
};
