import '../../../domain/entity/response/register_response_entity.dart';

class RegisterResponseModel {
  final String? userId;
  final int? muzakkiId;
  final String? name;
  final String? email;
  final String? phone;

  RegisterResponseModel({this.userId, this.muzakkiId, this.name, this.email, this.phone});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    final userJson = json['user'] as Map<String, dynamic>?;
    return RegisterResponseModel(
      userId: userJson?['id'] as String? ?? json['userId'] as String?,
      muzakkiId: json['muzakkiId'] as int?,
      name: userJson?['name'] as String? ?? json['name'] as String?,
      email: userJson?['email'] as String? ?? json['email'] as String?,
      phone: userJson?['phone'] as String? ?? json['phone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'muzakkiId': muzakkiId, 'name': name, 'email': email, 'phone': phone};
  }

  factory RegisterResponseModel.fromEntity(RegisterResponseEntity entity) {
    return RegisterResponseModel(
      userId: entity.userId,
      muzakkiId: entity.muzakkiId,
      name: entity.name,
      email: entity.email,
      phone: entity.phone,
    );
  }

  RegisterResponseEntity toEntity() {
    return RegisterResponseEntity(
      userId: userId,
      muzakkiId: muzakkiId,
      name: name,
      email: email,
      phone: phone,
    );
  }
}
