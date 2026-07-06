import '../../../domain/entity/response/disbursement_entity.dart';
import '../../../domain/entity/response/disbursement_mustahik_entity.dart';

class DisbursementModel {
  final int? id;
  final String? upz;
  final String? upzLocation;
  final String? fundType;
  final int? amount;
  final String? disbursementType;
  final String? status;
  final String? location;
  final String? proofUrl;
  final List<dynamic>? inventoryItem;
  final double? naturaQty;
  final String? kabid;
  final String? pimpinan;
  final String? kabidApprovedAt;
  final String? pimpinanApprovedAt;
  final String? approvalNotes;
  final DisbursementJournalModel? journal;
  final String? createdAt;
  final String? updatedAt;
  final DisbursementMustahikModel? mustahik;

  DisbursementModel({
    this.id,
    this.upz,
    this.upzLocation,
    this.fundType,
    this.amount,
    this.disbursementType,
    this.status,
    this.location,
    this.proofUrl,
    this.inventoryItem,
    this.naturaQty,
    this.kabid,
    this.pimpinan,
    this.kabidApprovedAt,
    this.pimpinanApprovedAt,
    this.approvalNotes,
    this.journal,
    this.createdAt,
    this.updatedAt,
    this.mustahik,
  });

  factory DisbursementModel.fromJson(Map<String, dynamic> json) {
    return DisbursementModel(
      id: json['id'] as int?,
      upz: json['upz'] as String?,
      upzLocation: json['upzLocation'] as String?,
      fundType: json['fundType'] as String?,
      amount: json['amount'] as int?,
      disbursementType: json['disbursementType'] as String?,
      status: json['status'] as String?,
      location: json['location'] as String?,
      proofUrl: json['proofUrl'] as String?,
      inventoryItem: json['inventoryItem'] as List<dynamic>?,
      naturaQty: (json['naturaQty'] as num?)?.toDouble(),
      kabid: json['kabid'] as String?,
      pimpinan: json['pimpinan'] as String?,
      kabidApprovedAt: json['kabidApprovedAt'] as String?,
      pimpinanApprovedAt: json['pimpinanApprovedAt'] as String?,
      approvalNotes: json['approvalNotes'] as String?,
      journal: json['journal'] is Map<String, dynamic>
          ? DisbursementJournalModel.fromJson(json['journal'] as Map<String, dynamic>)
          : null,
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
      'upz': upz,
      'upzLocation': upzLocation,
      'fundType': fundType,
      'amount': amount,
      'disbursementType': disbursementType,
      'status': status,
      'location': location,
      'proofUrl': proofUrl,
      'inventoryItem': inventoryItem,
      'naturaQty': naturaQty,
      'kabid': kabid,
      'pimpinan': pimpinan,
      'kabidApprovedAt': kabidApprovedAt,
      'pimpinanApprovedAt': pimpinanApprovedAt,
      'approvalNotes': approvalNotes,
      'journal': journal?.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'mustahik': mustahik?.toJson(),
    };
  }

  factory DisbursementModel.fromEntity(DisbursementEntity entity) {
    return DisbursementModel(
      id: entity.id,
      upz: entity.upz,
      upzLocation: entity.upzLocation,
      fundType: entity.fundType,
      amount: entity.amount,
      disbursementType: entity.disbursementType,
      status: entity.status,
      location: entity.location,
      proofUrl: entity.proofUrl,
      inventoryItem: entity.inventoryItem,
      naturaQty: entity.naturaQty,
      kabid: entity.kabid,
      pimpinan: entity.pimpinan,
      kabidApprovedAt: entity.kabidApprovedAt,
      pimpinanApprovedAt: entity.pimpinanApprovedAt,
      approvalNotes: entity.approvalNotes,
      journal: entity.journal != null ? DisbursementJournalModel.fromEntity(entity.journal!) : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      mustahik: entity.mustahik != null
          ? DisbursementMustahikModel.fromEntity(entity.mustahik!)
          : null,
    );
  }

  DisbursementEntity toEntity() {
    return DisbursementEntity(
      id: id,
      upz: upz,
      upzLocation: upzLocation,
      fundType: fundType,
      amount: amount,
      disbursementType: disbursementType,
      status: status,
      location: location,
      proofUrl: proofUrl,
      inventoryItem: inventoryItem,
      naturaQty: naturaQty,
      kabid: kabid,
      pimpinan: pimpinan,
      kabidApprovedAt: kabidApprovedAt,
      pimpinanApprovedAt: pimpinanApprovedAt,
      approvalNotes: approvalNotes,
      journal: journal?.toEntity(),
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

class DisbursementJournalModel {
  final int? id;
  final String? referenceNo;
  final String? transactionDate;
  final String? description;
  final int? totalAmount;
  final String? status;

  DisbursementJournalModel({
    this.id,
    this.referenceNo,
    this.transactionDate,
    this.description,
    this.totalAmount,
    this.status,
  });

  factory DisbursementJournalModel.fromJson(Map<String, dynamic> json) {
    return DisbursementJournalModel(
      id: (json['id'] as num?)?.toInt(),
      referenceNo: json['referenceNo'] as String?,
      transactionDate: json['transactionDate'] as String?,
      description: json['description'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      status: json['status'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'referenceNo': referenceNo,
      'transactionDate': transactionDate,
      'description': description,
      'totalAmount': totalAmount,
      'status': status,
    };
  }

  factory DisbursementJournalModel.fromEntity(DisbursementJournalEntity entity) {
    return DisbursementJournalModel(
      id: entity.id,
      referenceNo: entity.referenceNo,
      transactionDate: entity.transactionDate,
      description: entity.description,
      totalAmount: entity.totalAmount,
      status: entity.status,
    );
  }

  DisbursementJournalEntity toEntity() {
    return DisbursementJournalEntity(
      id: id,
      referenceNo: referenceNo,
      transactionDate: transactionDate,
      description: description,
      totalAmount: totalAmount,
      status: status,
    );
  }
}
