// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) => _AuthEntity(
  identifier: json['identifier'] as String?,
  password: json['password'] as String?,
  fcmToken: json['fcmToken'] as String?,
);

Map<String, dynamic> _$AuthEntityToJson(_AuthEntity instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
    };
