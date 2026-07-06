import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_entity.freezed.dart';
part 'register_response_entity.g.dart';

@Freezed()
abstract class RegisterResponseEntity with _$RegisterResponseEntity {
  const factory RegisterResponseEntity({
    String? userId,
    int? muzakkiId,
    String? name,
    String? email,
    String? phone,
  }) = _RegisterResponseEntity;

  factory RegisterResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseEntityFromJson(json);
}
