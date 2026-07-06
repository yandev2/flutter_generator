import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_entity.freezed.dart';
part 'register_request_entity.g.dart';

@Freezed()
abstract class RegisterRequestEntity with _$RegisterRequestEntity {
  const factory RegisterRequestEntity({
    String? name,
    String? email,
    String? phone,
    String? type, // 'individu' | 'institusi'
    String? nik,
    String? npwp,
    String? password,
    String? confirmPassword,
    String? fcmToken,
  }) = _RegisterRequestEntity;

  factory RegisterRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestEntityFromJson(json);
}
