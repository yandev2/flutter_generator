import '../../../domain/entity/request/register_request_entity.dart';

class RegisterRequestModel {
  final String? name;
  final String? email;
  final String? phone;
  final String? type;
  final String? nik;
  final String? npwp;
  final String? password;
  final String? confirmPassword;
  final String? fcmToken;

  RegisterRequestModel({
    this.name,
    this.email,
    this.phone,
    this.type,
    this.nik,
    this.npwp,
    this.password,
    this.confirmPassword,
    this.fcmToken,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    return RegisterRequestModel(
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
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'type': type,
      'nik': nik,
      'npwp': npwp,
      'password': password,
      'confirmPassword': confirmPassword,
      'fcmToken': fcmToken,
    };
  }

  factory RegisterRequestModel.fromEntity(RegisterRequestEntity entity) {
    return RegisterRequestModel(
      name: entity.name,
      email: entity.email,
      phone: entity.phone,
      type: entity.type,
      nik: entity.nik,
      npwp: entity.npwp,
      password: entity.password,
      confirmPassword: entity.confirmPassword,
      fcmToken: entity.fcmToken,
    );
  }

  RegisterRequestEntity toEntity() {
    return RegisterRequestEntity(
      name: name,
      email: email,
      phone: phone,
      type: type,
      nik: nik,
      npwp: npwp,
      password: password,
      confirmPassword: confirmPassword,
      fcmToken: fcmToken,
    );
  }
}
