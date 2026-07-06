import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@Freezed()
abstract class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    String? identifier,
    String? password,
    String? fcmToken,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}
