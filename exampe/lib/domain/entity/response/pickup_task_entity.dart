import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_task_entity.freezed.dart';
part 'pickup_task_entity.g.dart';

/// Response GET /api/mobile/v1/tasks/pickup dan GET /api/mobile/v1/tasks/pickup/:id
@Freezed()
abstract class PickupTaskEntity with _$PickupTaskEntity {
  const factory PickupTaskEntity({
    int? id,
    String? type,
    String? requestCode,
    String? status,
    String? pickupType,
    String? muzakkiPhone,
    String? muzzaki,
    String? description,
    String? address,
    String? scheduledDate,
    String? scheduledTimeNote,
    String? createdAt,
    List<PickupTaskNaturaItemEntity>? naturaItems,
    int? estimatedAmount,
    double? latitude,
    double? longitude,
    String? notes,
  }) = _PickupTaskEntity;

  factory PickupTaskEntity.fromJson(Map<String, dynamic> json) =>
      _$PickupTaskEntityFromJson(json);
}

@Freezed()
abstract class PickupTaskNaturaItemEntity with _$PickupTaskNaturaItemEntity {
  const factory PickupTaskNaturaItemEntity({
    int? id,
    String? name,
    int? quantity,
    String? uom,
    String? photoUrl,
    num? lineValue,
  }) = _PickupTaskNaturaItemEntity;

  factory PickupTaskNaturaItemEntity.fromJson(Map<String, dynamic> json) =>
      _$PickupTaskNaturaItemEntityFromJson(json);
}
