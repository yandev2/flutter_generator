import 'package:freezed_annotation/freezed_annotation.dart';

part 'muzzaki_transaction_item_list_entity.freezed.dart';
part 'muzzaki_transaction_item_list_entity.g.dart';

@Freezed()
abstract class MuzzakiTransactionItemListEntity with _$MuzzakiTransactionItemListEntity {
  const factory MuzzakiTransactionItemListEntity({
    int? id,
    String? programName,
    String? paymentMethod,
    int? amount,
    bool? isNatura,
    String? status,
    String? createdAt,
  }) = _MuzzakiTransactionItemListEntity;

  factory MuzzakiTransactionItemListEntity.fromJson(Map<String, dynamic> json) =>
      _$MuzzakiTransactionItemListEntityFromJson(json);
}
