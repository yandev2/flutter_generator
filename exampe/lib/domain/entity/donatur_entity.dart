import 'package:freezed_annotation/freezed_annotation.dart';

part 'donatur_entity.freezed.dart';
part 'donatur_entity.g.dart';

/// Response item GET /api/mobile/v1/programs/:id/donators
@Freezed()
abstract class DonaturEntity with _$DonaturEntity {
  const factory DonaturEntity({
    int? id,
    String? name,
    int? amount,
    bool? isAnonymous,
    String? date,
    String? avatar,
  }) = _DonaturEntity;

  factory DonaturEntity.fromJson(Map<String, dynamic> json) =>
      _$DonaturEntityFromJson(json);
}
