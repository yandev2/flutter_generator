import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_data_entity.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

/// Response login / auto_login: { token, expiresAt, user }
@Freezed()
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? token,
    String? expiresAt,
    UserDataEntity? user,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
