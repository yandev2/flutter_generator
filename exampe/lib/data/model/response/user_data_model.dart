import '../../../domain/entity/response/user_data_entity.dart';

class UserDataModel {
  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? status;
  final String? avatar;
  final String? roleCode;
  final RoleModel? role;
  final MuzakkiProfileModel? muzakkiProfile;
  final AmilProfileModel? amilProfile;

  UserDataModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.status,
    this.avatar,
    this.roleCode,
    this.role,
    this.muzakkiProfile,
    this.amilProfile,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      avatar: json['avatar'] as String?,
      roleCode: json['roleCode'] as String?,
      role: json['role'] != null ? RoleModel.fromJson(json['role'] as Map<String, dynamic>) : null,
      muzakkiProfile: json['muzakkiProfile'] != null
          ? MuzakkiProfileModel.fromJson(json['muzakkiProfile'] as Map<String, dynamic>)
          : null,
      amilProfile: json['amilProfile'] != null
          ? AmilProfileModel.fromJson(json['amilProfile'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'status': status,
      'avatar': avatar,
      'roleCode': roleCode,
      'role': role?.toJson(),
      'muzakkiProfile': muzakkiProfile?.toJson(),
      'amilProfile': amilProfile?.toJson(),
    };
  }

  factory UserDataModel.fromEntity(UserDataEntity entity) {
    return UserDataModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      phone: entity.phone,
      status: entity.status,
      avatar: entity.avatar,
      roleCode: entity.roleCode,
      role: entity.role != null ? RoleModel.fromEntity(entity.role!) : null,
      muzakkiProfile: entity.muzakkiProfile != null
          ? MuzakkiProfileModel.fromEntity(entity.muzakkiProfile!)
          : null,
      amilProfile: entity.amilProfile != null
          ? AmilProfileModel.fromEntity(entity.amilProfile!)
          : null,
    );
  }

  UserDataEntity toEntity() {
    return UserDataEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      status: status,
      avatar: avatar,
      roleCode: roleCode,
      role: role?.toEntity(),
      muzakkiProfile: muzakkiProfile?.toEntity(),
      amilProfile: amilProfile?.toEntity(),
    );
  }
}

class RoleModel {
  final int? id;
  final String? name;

  RoleModel({this.id, this.name});

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(id: json['id'] as int?, name: json['name'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  factory RoleModel.fromEntity(RoleEntity entity) {
    return RoleModel(id: entity.id, name: entity.name);
  }

  RoleEntity toEntity() {
    return RoleEntity(id: id, name: name);
  }
}

class MuzakkiProfileModel {
  final int? id;
  final String? nik;
  final String? npwp;
  final bool? isAnonymous;

  MuzakkiProfileModel({this.id, this.nik, this.npwp, this.isAnonymous});

  factory MuzakkiProfileModel.fromJson(Map<String, dynamic> json) {
    return MuzakkiProfileModel(
      id: json['id'] as int?,
      nik: json['nik'] as String?,
      npwp: json['npwp'] as String?,
      isAnonymous: json['isAnonymous'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nik': nik, 'npwp': npwp, 'isAnonymous': isAnonymous};
  }

  factory MuzakkiProfileModel.fromEntity(MuzakkiProfileEntity entity) {
    return MuzakkiProfileModel(
      id: entity.id,
      nik: entity.nik,
      npwp: entity.npwp,
      isAnonymous: entity.isAnonymous,
    );
  }

  MuzakkiProfileEntity toEntity() {
    return MuzakkiProfileEntity(id: id, nik: nik, npwp: npwp, isAnonymous: isAnonymous);
  }
}

class AmilProfileModel {
  final int? id;
  final String? nip;
  final String? position;
  final String? amilType;
  final int? monthlyTarget;
  final UpzModel? upz;

  AmilProfileModel({this.id, this.nip, this.position, this.amilType, this.monthlyTarget, this.upz});

  factory AmilProfileModel.fromJson(Map<String, dynamic> json) {
    return AmilProfileModel(
      id: json['id'] as int?,
      nip: json['nip'] as String?,
      position: json['position'] as String?,
      amilType: json['amilType'] as String?,
      monthlyTarget: json['monthlyTarget'] as int?,
      upz: json['upz'] != null ? UpzModel.fromJson(json['upz'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nip': nip,
      'position': position,
      'amilType': amilType,
      'monthlyTarget': monthlyTarget,
      'upz': upz?.toJson(),
    };
  }

  factory AmilProfileModel.fromEntity(AmilProfileEntity entity) {
    return AmilProfileModel(
      id: entity.id,
      nip: entity.nip,
      position: entity.position,
      amilType: entity.amilType,
      monthlyTarget: entity.monthlyTarget,
      upz: entity.upz != null ? UpzModel.fromEntity(entity.upz!) : null,
    );
  }

  AmilProfileEntity toEntity() {
    return AmilProfileEntity(
      id: id,
      nip: nip,
      position: position,
      amilType: amilType,
      monthlyTarget: monthlyTarget,
      upz: upz?.toEntity(),
    );
  }
}

class UpzModel {
  final int? id;
  final String? name;
  final String? city;

  UpzModel({this.id, this.name, this.city});

  factory UpzModel.fromJson(Map<String, dynamic> json) {
    return UpzModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      city: json['city'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'city': city};
  }

  factory UpzModel.fromEntity(UpzEntity entity) {
    return UpzModel(id: entity.id, name: entity.name, city: entity.city);
  }

  UpzEntity toEntity() {
    return UpzEntity(id: id, name: name, city: city);
  }
}
