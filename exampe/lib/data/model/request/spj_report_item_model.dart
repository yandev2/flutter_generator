import '../../../domain/entity/request/spj_report_item_entity.dart';

class SpjReportItemModel {
  final String? description;
  final int? amount;

  /// Dikirim sebagai multipart "receipt_0", "receipt_1", dst.
  final String? receiptFilePath;

  SpjReportItemModel({this.description, this.amount, this.receiptFilePath});

  factory SpjReportItemModel.fromJson(Map<String, dynamic> json) {
    return SpjReportItemModel(
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      receiptFilePath: json['receiptFilePath'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'description': description, 'amount': amount};
  }

  factory SpjReportItemModel.fromEntity(SpjReportItemEntity entity) {
    return SpjReportItemModel(
      description: entity.description,
      amount: entity.amount,
      receiptFilePath: entity.receiptFilePath,
    );
  }

  SpjReportItemEntity toEntity() {
    return SpjReportItemEntity(
      description: description,
      amount: amount,
      receiptFilePath: receiptFilePath,
    );
  }
}
