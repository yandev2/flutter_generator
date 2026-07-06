import '../../../domain/entity/response/inventory_item_entity.dart';

class InventoryItemModel {
  final int? id;
  final String? name;
  final String? uom;

  InventoryItemModel({this.id, this.name, this.uom});

  factory InventoryItemModel.fromJson(Map<String, dynamic> json) {
    return InventoryItemModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      uom: json['uom'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'uom': uom};
  }

  factory InventoryItemModel.fromEntity(InventoryItemEntity entity) {
    return InventoryItemModel(id: entity.id, name: entity.name, uom: entity.uom);
  }

  InventoryItemEntity toEntity() {
    return InventoryItemEntity(id: id, name: name, uom: uom);
  }
}
