import '../../../domain/entity/request/auth_entity.dart';

class AuthModel {
  final String? identifier;
  final String? password;
  final String? fcmToken;

  AuthModel({this.identifier, this.password, this.fcmToken});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      identifier: json['identifier'] as String?,
      password: json['password'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'identifier': identifier, 'password': password, 'fcmToken': fcmToken};
  }

  factory AuthModel.fromEntity(AuthEntity entity) {
    return AuthModel(
      identifier: entity.identifier,
      password: entity.password,
      fcmToken: entity.fcmToken,
    );
  }

  AuthEntity toEntity() {
    return AuthEntity(identifier: identifier, password: password, fcmToken: fcmToken);
  }
}
