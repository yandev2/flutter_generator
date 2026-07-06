import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_item_entity.freezed.dart';
part 'inventory_item_entity.g.dart';

/// Response item GET /api/mobile/v1/inventory/items
@Freezed()
abstract class InventoryItemEntity with _$InventoryItemEntity {
  const factory InventoryItemEntity({int? id, String? name, String? uom}) =
      _InventoryItemEntity;

  factory InventoryItemEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemEntityFromJson(json);
}
