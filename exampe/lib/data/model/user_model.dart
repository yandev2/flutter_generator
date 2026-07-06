import '../../domain/entity/response/user_entity.dart';
import 'response/user_data_model.dart';

class UserModel {
  final String? token;
  final String? expiresAt;
  final UserDataModel? user;

  UserModel({this.token, this.expiresAt, this.user});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] as String?,
      expiresAt: json['expiresAt'] as String?,
      user: json['user'] != null
          ? UserDataModel.fromJson(json['user'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'expiresAt': expiresAt, 'user': user?.toJson()};
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      token: entity.token,
      expiresAt: entity.expiresAt,
      user: entity.user != null ? UserDataModel.fromEntity(entity.user!) : null,
    );
  }

  UserEntity toEntity() {
    return UserEntity(token: token, expiresAt: expiresAt, user: user?.toEntity());
  }
}
