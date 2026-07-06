// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItemEntity _$InventoryItemEntityFromJson(Map<String, dynamic> json) =>
    _InventoryItemEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      uom: json['uom'] as String?,
    );

Map<String, dynamic> _$InventoryItemEntityToJson(
  _InventoryItemEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'uom': instance.uom,
};
