// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  token: json['token'] as String?,
  expiresAt: json['expiresAt'] as String?,
  user: json['user'] == null
      ? null
      : UserDataEntity.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiresAt': instance.expiresAt,
      'user': instance.user,
    };
