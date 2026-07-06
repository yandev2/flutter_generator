import 'package:freezed_annotation/freezed_annotation.dart';

part 'natura_item_entity.freezed.dart';
part 'natura_item_entity.g.dart';

@Freezed()
abstract class NaturaItemEntity with _$NaturaItemEntity {
  const factory NaturaItemEntity({
    int? inventoryItemId,
    String? itemName,
    double? qty,
    double? lineValue,
  }) = _NaturaItemEntity;

  factory NaturaItemEntity.fromJson(Map<String, dynamic> json) =>
      _$NaturaItemEntityFromJson(json);
}
