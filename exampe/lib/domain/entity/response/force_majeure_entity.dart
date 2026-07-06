import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_majeure_entity.freezed.dart';
part 'force_majeure_entity.g.dart';

/// Response item GET /api/mobile/v1/force-majeure?page=
@Freezed()
abstract class ForceMajeureEntity with _$ForceMajeureEntity {
  const factory ForceMajeureEntity({
    int? id,
    String? title,
    String? description,
    int? budgetCeiling,
    int? spentAmount,
    String? status,
    double? latitude,
    double? longitude,
    String? startDate,
    String? endDate,
  }) = _ForceMajeureEntity;

  factory ForceMajeureEntity.fromJson(Map<String, dynamic> json) =>
      _$ForceMajeureEntityFromJson(json);
}
