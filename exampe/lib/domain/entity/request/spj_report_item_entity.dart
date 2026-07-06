import 'package:freezed_annotation/freezed_annotation.dart';

part 'spj_report_item_entity.freezed.dart';
part 'spj_report_item_entity.g.dart';

@Freezed()
abstract class SpjReportItemEntity with _$SpjReportItemEntity {
  const factory SpjReportItemEntity({String? description, int? amount, String? receiptFilePath}) =
      _SpjReportItemEntity;

  factory SpjReportItemEntity.fromJson(Map<String, dynamic> json) =>
      _$SpjReportItemEntityFromJson(json);
}
