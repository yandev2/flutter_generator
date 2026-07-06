import '../../../domain/entity/request/cash_advance_request_entity.dart';

class CashAdvanceRequestModel {
  final int? upzId;
  final int? fundTypeId;
  final int? forceMajeureId;
  final int? amount;
  final String? purpose;
  final String? requestDate;
  final String? dueDate;

  CashAdvanceRequestModel({
    this.upzId,
    this.fundTypeId,
    this.forceMajeureId,
    this.amount,
    this.purpose,
    this.requestDate,
    this.dueDate,
  });

  factory CashAdvanceRequestModel.fromJson(Map<String, dynamic> json) {
    return CashAdvanceRequestModel(
      upzId: json['upzId'] as int?,
      fundTypeId: json['fundTypeId'] as int?,
      forceMajeureId: json['forceMajeureId'] as int?,
      amount: json['amount'] as int?,
      purpose: json['purpose'] as String?,
      requestDate: json['requestDate'] as String?,
      dueDate: json['dueDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'upzId': upzId,
      'fundTypeId': fundTypeId,
      'forceMajeureId': forceMajeureId,
      'amount': amount,
      'purpose': purpose,
      'requestDate': requestDate,
      'dueDate': dueDate,
    };
  }

  factory CashAdvanceRequestModel.fromEntity(CashAdvanceRequestEntity entity) {
    return CashAdvanceRequestModel(
      upzId: entity.upzId,
      fundTypeId: entity.fundTypeId,
      forceMajeureId: entity.forceMajeureId,
      amount: entity.amount,
      purpose: entity.purpose,
      requestDate: entity.requestDate,
      dueDate: entity.dueDate,
    );
  }

  CashAdvanceRequestEntity toEntity() {
    return CashAdvanceRequestEntity(
      upzId: upzId,
      fundTypeId: fundTypeId,
      forceMajeureId: forceMajeureId,
      amount: amount,
      purpose: purpose,
      requestDate: requestDate,
      dueDate: dueDate,
    );
  }
}
