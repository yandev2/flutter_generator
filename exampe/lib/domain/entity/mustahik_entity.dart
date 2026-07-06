import 'package:freezed_annotation/freezed_annotation.dart';

part 'mustahik_entity.freezed.dart';
part 'mustahik_entity.g.dart';

@freezed
abstract class MustahikEntity with _$MustahikEntity {
  const factory MustahikEntity({
    int? id,
    String? nik,
    String? name,
    String? phone,
    String? gender,
    String? maritalStatus,
    String? birthPlace,
    String? birthDate,
    String? spouseName,
    int? dependentsCount,
    String? education,
    String? occupation,
    int? monthlyIncome,
    String? incomeSource,
    String? address,
    String? rt,
    String? rw,
    String? village,
    String? district,
    String? city,
    String? province,
    String? postalCode,
    String? houseOwnership,
    String? houseCondition,
    double? buildingArea,
    double? landArea,
    int? roomCount,
    String? electricitySource,
    String? waterSource,
    String? asnafCategory,
    String? status,
    String? latestDisbursementDate,
  }) = _MustahikEntity;

  factory MustahikEntity.fromJson(Map<String, dynamic> json) =>
      _$MustahikEntityFromJson(json);
}
