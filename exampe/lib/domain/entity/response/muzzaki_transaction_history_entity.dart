import 'package:freezed_annotation/freezed_annotation.dart';
import '../natura_item_entity.dart';

part 'muzzaki_transaction_history_entity.freezed.dart';
part 'muzzaki_transaction_history_entity.g.dart';

@Freezed()
abstract class MuzzakiTransactionHistoryEntity with _$MuzzakiTransactionHistoryEntity {
  const factory MuzzakiTransactionHistoryEntity({
    int? id,
    int? programId,
    String? programName,
    int? amount,
    String? paymentMethod,
    bool? isNatura,
    List<NaturaItemEntity>? naturaItems,
    String? status,
    String? paymentDate,
    String? bszNo,
    String? receiptUrl,
    TrackingTimelineEntity? trackingTimeline,
    String? createdAt,
    String? updatedAt,
  }) = _MuzzakiTransactionHistoryEntity;

  factory MuzzakiTransactionHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$MuzzakiTransactionHistoryEntityFromJson(json);
}

@Freezed()
abstract class TrackingTimelineEntity with _$TrackingTimelineEntity {
  const factory TrackingTimelineEntity({
    String? paymentReceivedAt,
    String? verifiedAt,
    String? allocatedAt,
    String? distributedAt,
  }) = _TrackingTimelineEntity;

  factory TrackingTimelineEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackingTimelineEntityFromJson(json);
}
