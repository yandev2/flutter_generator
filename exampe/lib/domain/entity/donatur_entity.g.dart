// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donatur_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonaturEntity _$DonaturEntityFromJson(Map<String, dynamic> json) =>
    _DonaturEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      isAnonymous: json['isAnonymous'] as bool?,
      date: json['date'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$DonaturEntityToJson(_DonaturEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'isAnonymous': instance.isAnonymous,
      'date': instance.date,
      'avatar': instance.avatar,
    };
