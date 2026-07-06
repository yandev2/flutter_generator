import '../../domain/entity/natura_item_entity.dart';

class NaturaItemModel {
  final int? inventoryItemId;
  final String? itemName;
  final double? qty;
  final double? lineValue;

  NaturaItemModel({this.inventoryItemId, this.itemName, this.qty, this.lineValue});

  factory NaturaItemModel.fromJson(Map<String, dynamic> json) {
    return NaturaItemModel(
      inventoryItemId: json['inventoryItemId'] as int?,
      itemName: json['itemName'] as String?,
      qty: (json['qty'] as num?)?.toDouble(),
      lineValue: (json['lineValue'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'inventoryItemId': inventoryItemId,
      'itemName': itemName,
      'qty': qty,
      'lineValue': lineValue,
    };
  }

  Map<String, dynamic> toMultipartMap() {
    return {'inventoryItemId': inventoryItemId, 'qty': qty, 'lineValue': lineValue};
  }

  factory NaturaItemModel.fromEntity(NaturaItemEntity entity) {
    return NaturaItemModel(
      inventoryItemId: entity.inventoryItemId,
      itemName: entity.itemName,
      qty: entity.qty,
      lineValue: entity.lineValue,
    );
  }

  NaturaItemEntity toEntity() {
    return NaturaItemEntity(
      inventoryItemId: inventoryItemId,
      itemName: itemName,
      qty: qty,
      lineValue: lineValue,
    );
  }
}
