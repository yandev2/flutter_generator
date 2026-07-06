import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_details_entity.freezed.dart';
part 'pickup_details_entity.g.dart';

@Freezed()
abstract class PickupDetailsEntity with _$PickupDetailsEntity {
  const factory PickupDetailsEntity({
    String? address,
    double? latitude,
    double? longitude,
    String? scheduledDate,
    String? scheduledTimeNote,
    String? notes,
  }) = _PickupDetailsEntity;

  factory PickupDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$PickupDetailsEntityFromJson(json);
}
