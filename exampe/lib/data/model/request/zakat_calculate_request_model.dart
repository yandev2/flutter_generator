import '../../../domain/entity/request/zakat_calculate_request_entity.dart';

class ZakatCalculateRequestModel {
  final int? zakatTypeId;
  final ZakatCalculateParametersModel? parameters;

  ZakatCalculateRequestModel({this.zakatTypeId, this.parameters});

  factory ZakatCalculateRequestModel.fromJson(Map<String, dynamic> json) {
    return ZakatCalculateRequestModel(
      zakatTypeId: json['zakatTypeId'] as int?,
      parameters: json['parameters'] != null
          ? ZakatCalculateParametersModel.fromJson(json['parameters'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'zakatTypeId': zakatTypeId, 'parameters': parameters?.toJson()};
  }

  factory ZakatCalculateRequestModel.fromEntity(ZakatCalculateRequestEntity entity) {
    return ZakatCalculateRequestModel(
      zakatTypeId: entity.zakatTypeId,
      parameters: entity.parameters != null
          ? ZakatCalculateParametersModel.fromEntity(entity.parameters!)
          : null,
    );
  }

  ZakatCalculateRequestEntity toEntity() {
    return ZakatCalculateRequestEntity(
      zakatTypeId: zakatTypeId,
      parameters: parameters?.toEntity(),
    );
  }
}

class ZakatCalculateParametersModel {
  final num? asset;
  final int? people;

  ZakatCalculateParametersModel({this.asset, this.people});

  factory ZakatCalculateParametersModel.fromJson(Map<String, dynamic> json) {
    return ZakatCalculateParametersModel(
      asset: json['asset'] as num?,
      people: json['people'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'asset': asset, 'people': people};
  }

  factory ZakatCalculateParametersModel.fromEntity(ZakatCalculateParametersEntity entity) {
    return ZakatCalculateParametersModel(asset: entity.asset, people: entity.people);
  }

  ZakatCalculateParametersEntity toEntity() {
    return ZakatCalculateParametersEntity(asset: asset, people: people);
  }
}
