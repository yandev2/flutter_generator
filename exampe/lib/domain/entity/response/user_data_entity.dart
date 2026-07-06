import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_entity.freezed.dart';
part 'user_data_entity.g.dart';

/// Response user profile dari:
/// GET /muzakki/profile, /amil/profile, /surveyor/profile
/// Juga nested di login, dashboard, dll.
@Freezed()
abstract class UserDataEntity with _$UserDataEntity {
  const factory UserDataEntity({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? status,
    String? avatar,
    String? roleCode,
    RoleEntity? role,
    MuzakkiProfileEntity? muzakkiProfile,
    AmilProfileEntity? amilProfile,
  }) = _UserDataEntity;

  factory UserDataEntity.fromJson(Map<String, dynamic> json) =>
      _$UserDataEntityFromJson(json);
}

@Freezed()
abstract class RoleEntity with _$RoleEntity {
  const factory RoleEntity({int? id, String? name}) = _RoleEntity;

  factory RoleEntity.fromJson(Map<String, dynamic> json) =>
      _$RoleEntityFromJson(json);
}

@Freezed()
abstract class MuzakkiProfileEntity with _$MuzakkiProfileEntity {
  const factory MuzakkiProfileEntity({
    int? id,
    String? nik,
    String? npwp,
    bool? isAnonymous,
  }) = _MuzakkiProfileEntity;

  factory MuzakkiProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$MuzakkiProfileEntityFromJson(json);
}

@Freezed()
abstract class AmilProfileEntity with _$AmilProfileEntity {
  const factory AmilProfileEntity({
    int? id,
    String? nip,
    String? position,
    String? amilType,
    int? monthlyTarget,
    UpzEntity? upz,
  }) = _AmilProfileEntity;

  factory AmilProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$AmilProfileEntityFromJson(json);
}

@Freezed()
abstract class UpzEntity with _$UpzEntity {
  const factory UpzEntity({int? id, String? name, String? city}) = _UpzEntity;

  factory UpzEntity.fromJson(Map<String, dynamic> json) =>
      _$UpzEntityFromJson(json);
}
