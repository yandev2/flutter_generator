// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterResponseEntity _$RegisterResponseEntityFromJson(
  Map<String, dynamic> json,
) => _RegisterResponseEntity(
  userId: json['userId'] as String?,
  muzakkiId: (json['muzakkiId'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$RegisterResponseEntityToJson(
  _RegisterResponseEntity instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'muzakkiId': instance.muzakkiId,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
};
