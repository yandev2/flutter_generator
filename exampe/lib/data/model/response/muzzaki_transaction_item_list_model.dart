import '../../../domain/entity/response/muzzaki_transaction_item_list_entity.dart';

class MuzzakiTransactionItemListModel {
  final int? id;
  final String? programName;
  final String? paymentMethod;
  final int? amount;
  final bool? isNatura;
  final String? status;
  final String? createdAt;

  MuzzakiTransactionItemListModel({
    this.id,
    this.programName,
    this.paymentMethod,
    this.amount,
    this.isNatura,
    this.status,
    this.createdAt,
  });

  factory MuzzakiTransactionItemListModel.fromJson(Map<String, dynamic> json) {
    return MuzzakiTransactionItemListModel(
      id: json['id'] as int?,
      programName: json['programName'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      amount: json['amount'] as int?,
      isNatura: json['isNatura'] as bool?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'programName': programName,
      'paymentMethod': paymentMethod,
      'amount': amount,
      'isNatura': isNatura,
      'status': status,
      'createdAt': createdAt,
    };
  }

  factory MuzzakiTransactionItemListModel.fromEntity(MuzzakiTransactionItemListEntity entity) {
    return MuzzakiTransactionItemListModel(
      id: entity.id,
      programName: entity.programName,
      paymentMethod: entity.paymentMethod,
      amount: entity.amount,
      isNatura: entity.isNatura,
      status: entity.status,
      createdAt: entity.createdAt,
    );
  }

  MuzzakiTransactionItemListEntity toEntity() {
    return MuzzakiTransactionItemListEntity(
      id: id,
      programName: programName,
      paymentMethod: paymentMethod,
      amount: amount,
      isNatura: isNatura,
      status: status,
      createdAt: createdAt,
    );
  }
}
