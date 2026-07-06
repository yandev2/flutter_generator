// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestEntity _$RegisterRequestEntityFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestEntity(
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  type: json['type'] as String?,
  nik: json['nik'] as String?,
  npwp: json['npwp'] as String?,
  password: json['password'] as String?,
  confirmPassword: json['confirmPassword'] as String?,
  fcmToken: json['fcmToken'] as String?,
);

Map<String, dynamic> _$RegisterRequestEntityToJson(
  _RegisterRequestEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'type': instance.type,
  'nik': instance.nik,
  'npwp': instance.npwp,
  'password': instance.password,
  'confirmPassword': instance.confirmPassword,
  'fcmToken': instance.fcmToken,
};
