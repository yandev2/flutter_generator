// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataEntity _$UserDataEntityFromJson(Map<String, dynamic> json) =>
    _UserDataEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      avatar: json['avatar'] as String?,
      roleCode: json['roleCode'] as String?,
      role: json['role'] == null
          ? null
          : RoleEntity.fromJson(json['role'] as Map<String, dynamic>),
      muzakkiProfile: json['muzakkiProfile'] == null
          ? null
          : MuzakkiProfileEntity.fromJson(
              json['muzakkiProfile'] as Map<String, dynamic>,
            ),
      amilProfile: json['amilProfile'] == null
          ? null
          : AmilProfileEntity.fromJson(
              json['amilProfile'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserDataEntityToJson(_UserDataEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'status': instance.status,
      'avatar': instance.avatar,
      'roleCode': instance.roleCode,
      'role': instance.role,
      'muzakkiProfile': instance.muzakkiProfile,
      'amilProfile': instance.amilProfile,
    };

_RoleEntity _$RoleEntityFromJson(Map<String, dynamic> json) => _RoleEntity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$RoleEntityToJson(_RoleEntity instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_MuzakkiProfileEntity _$MuzakkiProfileEntityFromJson(
  Map<String, dynamic> json,
) => _MuzakkiProfileEntity(
  id: (json['id'] as num?)?.toInt(),
  nik: json['nik'] as String?,
  npwp: json['npwp'] as String?,
  isAnonymous: json['isAnonymous'] as bool?,
);

Map<String, dynamic> _$MuzakkiProfileEntityToJson(
  _MuzakkiProfileEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'nik': instance.nik,
  'npwp': instance.npwp,
  'isAnonymous': instance.isAnonymous,
};

_AmilProfileEntity _$AmilProfileEntityFromJson(Map<String, dynamic> json) =>
    _AmilProfileEntity(
      id: (json['id'] as num?)?.toInt(),
      nip: json['nip'] as String?,
      position: json['position'] as String?,
      amilType: json['amilType'] as String?,
      monthlyTarget: (json['monthlyTarget'] as num?)?.toInt(),
      upz: json['upz'] == null
          ? null
          : UpzEntity.fromJson(json['upz'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmilProfileEntityToJson(_AmilProfileEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nip': instance.nip,
      'position': instance.position,
      'amilType': instance.amilType,
      'monthlyTarget': instance.monthlyTarget,
      'upz': instance.upz,
    };

_UpzEntity _$UpzEntityFromJson(Map<String, dynamic> json) => _UpzEntity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  city: json['city'] as String?,
);

Map<String, dynamic> _$UpzEntityToJson(_UpzEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
    };
