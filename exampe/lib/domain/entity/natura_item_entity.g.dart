// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'natura_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NaturaItemEntity _$NaturaItemEntityFromJson(Map<String, dynamic> json) =>
    _NaturaItemEntity(
      inventoryItemId: (json['inventoryItemId'] as num?)?.toInt(),
      itemName: json['itemName'] as String?,
      qty: (json['qty'] as num?)?.toDouble(),
      lineValue: (json['lineValue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NaturaItemEntityToJson(_NaturaItemEntity instance) =>
    <String, dynamic>{
      'inventoryItemId': instance.inventoryItemId,
      'itemName': instance.itemName,
      'qty': instance.qty,
      'lineValue': instance.lineValue,
    };
