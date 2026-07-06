import 'package:freezed_annotation/freezed_annotation.dart';

part 'programs_item_list_entity.freezed.dart';
part 'programs_item_list_entity.g.dart';

@Freezed()
abstract class ProgramsItemListEntity with _$ProgramsItemListEntity {
  const factory ProgramsItemListEntity({
    int? id,
    String? name,
    String? description,
    int? targetAmount,
    bool? isZakatFitrah,
    String? bannerUrl,
    bool? isActive,
    String? endDate,
    double? percentTarget,
    List<String>? donatur,
  }) = _ProgramsItemListEntity;

  factory ProgramsItemListEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramsItemListEntityFromJson(json);
}
