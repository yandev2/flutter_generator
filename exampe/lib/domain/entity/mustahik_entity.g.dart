// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mustahik_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MustahikEntity _$MustahikEntityFromJson(Map<String, dynamic> json) =>
    _MustahikEntity(
      id: (json['id'] as num?)?.toInt(),
      nik: json['nik'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      birthPlace: json['birthPlace'] as String?,
      birthDate: json['birthDate'] as String?,
      spouseName: json['spouseName'] as String?,
      dependentsCount: (json['dependentsCount'] as num?)?.toInt(),
      education: json['education'] as String?,
      occupation: json['occupation'] as String?,
      monthlyIncome: (json['monthlyIncome'] as num?)?.toInt(),
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
      roomCount: (json['roomCount'] as num?)?.toInt(),
      electricitySource: json['electricitySource'] as String?,
      waterSource: json['waterSource'] as String?,
      asnafCategory: json['asnafCategory'] as String?,
      status: json['status'] as String?,
      latestDisbursementDate: json['latestDisbursementDate'] as String?,
    );

Map<String, dynamic> _$MustahikEntityToJson(_MustahikEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nik': instance.nik,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'birthPlace': instance.birthPlace,
      'birthDate': instance.birthDate,
      'spouseName': instance.spouseName,
      'dependentsCount': instance.dependentsCount,
      'education': instance.education,
      'occupation': instance.occupation,
      'monthlyIncome': instance.monthlyIncome,
      'incomeSource': instance.incomeSource,
      'address': instance.address,
      'rt': instance.rt,
      'rw': instance.rw,
      'village': instance.village,
      'district': instance.district,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'houseOwnership': instance.houseOwnership,
      'houseCondition': instance.houseCondition,
      'buildingArea': instance.buildingArea,
      'landArea': instance.landArea,
      'roomCount': instance.roomCount,
      'electricitySource': instance.electricitySource,
      'waterSource': instance.waterSource,
      'asnafCategory': instance.asnafCategory,
      'status': instance.status,
      'latestDisbursementDate': instance.latestDisbursementDate,
    };
