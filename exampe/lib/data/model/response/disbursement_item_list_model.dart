import '../../../domain/entity/response/disbursement_item_list_entity.dart';

class DisbursementItemListModel {
  final int? id;
  final String? proofUrl;
  final String? upz;
  final String? fundType;
  final int? amount;
  final String? disbursementType;
  final String? status;
  final String? createdAt;
  final String? updatedAt;
  final DisbursementMustahikModel? mustahik;

  DisbursementItemListModel({
    this.id,
    this.proofUrl,
    this.upz,
    this.fundType,
    this.amount,
    this.disbursementType,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.mustahik,
  });

  factory DisbursementItemListModel.fromJson(Map<String, dynamic> json) {
    return DisbursementItemListModel(
      id: json['id'] as int?,
      proofUrl: json['proofUrl'] as String?,
      upz: json['upz'] as String?,
      fundType: json['fundType'] as String?,
      amount: json['amount'] as int?,
      disbursementType: json['disbursementType'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      mustahik: json['mustahik'] is Map<String, dynamic>
          ? DisbursementMustahikModel.fromJson(json['mustahik'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'proofUrl': proofUrl,
      'upz': upz,
      'fundType': fundType,
      'amount': amount,
      'disbursementType': disbursementType,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'mustahik': mustahik?.toJson(),
    };
  }

  factory DisbursementItemListModel.fromEntity(DisbursementItemListEntity entity) {
    return DisbursementItemListModel(
      id: entity.id,
      proofUrl: entity.proofUrl,
      upz: entity.upz,
      fundType: entity.fundType,
      amount: entity.amount,
      disbursementType: entity.disbursementType,
      status: entity.status,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      mustahik: entity.mustahik != null
          ? DisbursementMustahikModel.fromEntity(entity.mustahik!)
          : null,
    );
  }

  DisbursementItemListEntity toEntity() {
    return DisbursementItemListEntity(
      id: id,
      proofUrl: proofUrl,
      upz: upz,
      fundType: fundType,
      amount: amount,
      disbursementType: disbursementType,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      mustahik: mustahik?.toEntity(),
    );
  }
}

class DisbursementMustahikModel {
  final String? name;
  final String? asnafCategory;

  DisbursementMustahikModel({this.name, this.asnafCategory});

  factory DisbursementMustahikModel.fromJson(Map<String, dynamic> json) {
    return DisbursementMustahikModel(
      name: json['name'] as String?,
      asnafCategory: json['asnafCategory'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'asnafCategory': asnafCategory};
  }

  factory DisbursementMustahikModel.fromEntity(DisbursementMustahikEntity entity) {
    return DisbursementMustahikModel(name: entity.name, asnafCategory: entity.asnafCategory);
  }

  DisbursementMustahikEntity toEntity() {
    return DisbursementMustahikEntity(name: name, asnafCategory: asnafCategory);
  }
}
