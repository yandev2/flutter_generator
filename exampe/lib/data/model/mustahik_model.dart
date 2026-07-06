import '../../domain/entity/mustahik_entity.dart';

class MustahikModel {
  final int? id;
  final String? nik;
  final String? name;
  final String? phone;
  final String? gender;
  final String? maritalStatus;
  final String? birthPlace;
  final String? birthDate;
  final String? spouseName;
  final int? dependentsCount;
  final String? education;
  final String? occupation;
  final int? monthlyIncome;
  final String? incomeSource;
  final String? address;
  final String? rt;
  final String? rw;
  final String? village;
  final String? district;
  final String? city;
  final String? province;
  final String? postalCode;
  final String? houseOwnership;
  final String? houseCondition;
  final double? buildingArea;
  final double? landArea;
  final int? roomCount;
  final String? electricitySource;
  final String? waterSource;
  final String? asnafCategory;
  final String? status;
  final String? latestDisbursementDate;

  MustahikModel({
    this.id,
    this.nik,
    this.name,
    this.phone,
    this.gender,
    this.maritalStatus,
    this.birthPlace,
    this.birthDate,
    this.spouseName,
    this.dependentsCount,
    this.education,
    this.occupation,
    this.monthlyIncome,
    this.incomeSource,
    this.address,
    this.rt,
    this.rw,
    this.village,
    this.district,
    this.city,
    this.province,
    this.postalCode,
    this.houseOwnership,
    this.houseCondition,
    this.buildingArea,
    this.landArea,
    this.roomCount,
    this.electricitySource,
    this.waterSource,
    this.asnafCategory,
    this.status,
    this.latestDisbursementDate,
  });

  factory MustahikModel.fromJson(Map<String, dynamic> json) {
    return MustahikModel(
      id: json['id'] as int?,
      nik: json['nik'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      birthPlace: json['birthPlace'] as String?,
      birthDate: json['birthDate'] as String?,
      spouseName: json['spouseName'] as String?,
      dependentsCount: json['dependentsCount'] as int?,
      education: json['education'] as String?,
      occupation: json['occupation'] as String?,
      monthlyIncome: json['monthlyIncome'] as int?,
      incomeSource: json['incomeSource'] as String?,
      address: json['address'] as String?,
      rt: json['rt'] as String?,
      rw: json['rw'] as String?,
      village: json['village'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      postalCode: json['postalCode'] as String?,
      houseOwnership: json['houseOwnership'] as String?,
      houseCondition: json['houseCondition'] as String?,
      buildingArea: (json['buildingArea'] as num?)?.toDouble(),
      landArea: (json['landArea'] as num?)?.toDouble(),
      roomCount: json['roomCount'] as int?,
      electricitySource: json['electricitySource'] as String?,
      waterSource: json['waterSource'] as String?,
      asnafCategory: json['asnafCategory'] as String?,
      status: json['status'] as String?,
      latestDisbursementDate: json['latestDisbursementDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nik': nik,
      'name': name,
      'phone': phone,
      'gender': gender,
      'maritalStatus': maritalStatus,
      'birthPlace': birthPlace,
      'birthDate': birthDate,
      'spouseName': spouseName,
      'dependentsCount': dependentsCount,
      'education': education,
      'occupation': occupation,
      'monthlyIncome': monthlyIncome,
      'incomeSource': incomeSource,
      'address': address,
      'rt': rt,
      'rw': rw,
      'village': village,
      'district': district,
      'city': city,
      'province': province,
      'postalCode': postalCode,
      'houseOwnership': houseOwnership,
      'houseCondition': houseCondition,
      'buildingArea': buildingArea,
      'landArea': landArea,
      'roomCount': roomCount,
      'electricitySource': electricitySource,
      'waterSource': waterSource,
      'asnafCategory': asnafCategory,
      'status': status,
      'latestDisbursementDate': latestDisbursementDate,
    };
  }

  factory MustahikModel.fromEntity(MustahikEntity entity) {
    return MustahikModel(
      id: entity.id,
      nik: entity.nik,
      name: entity.name,
      phone: entity.phone,
      gender: entity.gender,
      maritalStatus: entity.maritalStatus,
      birthPlace: entity.birthPlace,
      birthDate: entity.birthDate,
      spouseName: entity.spouseName,
      dependentsCount: entity.dependentsCount,
      education: entity.education,
      occupation: entity.occupation,
      monthlyIncome: entity.monthlyIncome,
      incomeSource: entity.incomeSource,
      address: entity.address,
      rt: entity.rt,
      rw: entity.rw,
      village: entity.village,
      district: entity.district,
      city: entity.city,
      province: entity.province,
      postalCode: entity.postalCode,
      houseOwnership: entity.houseOwnership,
      houseCondition: entity.houseCondition,
      buildingArea: entity.buildingArea,
      landArea: entity.landArea,
      roomCount: entity.roomCount,
      electricitySource: entity.electricitySource,
      waterSource: entity.waterSource,
      asnafCategory: entity.asnafCategory,
      status: entity.status,
      latestDisbursementDate: entity.latestDisbursementDate,
    );
  }

  MustahikEntity toEntity() {
    return MustahikEntity(
      id: id,
      nik: nik,
      name: name,
      phone: phone,
      gender: gender,
      maritalStatus: maritalStatus,
      birthPlace: birthPlace,
      birthDate: birthDate,
      spouseName: spouseName,
      dependentsCount: dependentsCount,
      education: education,
      occupation: occupation,
      monthlyIncome: monthlyIncome,
      incomeSource: incomeSource,
      address: address,
      rt: rt,
      rw: rw,
      village: village,
      district: district,
      city: city,
      province: province,
      postalCode: postalCode,
      houseOwnership: houseOwnership,
      houseCondition: houseCondition,
      buildingArea: buildingArea,
      landArea: landArea,
      roomCount: roomCount,
      electricitySource: electricitySource,
      waterSource: waterSource,
      asnafCategory: asnafCategory,
      status: status,
      latestDisbursementDate: latestDisbursementDate,
    );
  }
}
