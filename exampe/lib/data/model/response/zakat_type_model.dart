import '../../../domain/entity/response/zakat_type_entity.dart';

class ZakatTypeModel {
  final int? id;
  final String? slug;
  final String? name;
  final String? description;
  final String? iconUrl;
  final bool? isActive;
  final int? fundTypeId;
  final String? fundTypeName;
  final ZakatTypeCommodityModel? commodity;
  final double? zakatRate;
  final int? haulMonths;
  final String? nisabFormula;
  final String? zakatFormula;
  final ZakatTypeVariablesModel? variables;
  final String? variablesNote;

  ZakatTypeModel({
    this.id,
    this.slug,
    this.name,
    this.description,
    this.iconUrl,
    this.isActive,
    this.fundTypeId,
    this.fundTypeName,
    this.commodity,
    this.zakatRate,
    this.haulMonths,
    this.nisabFormula,
    this.zakatFormula,
    this.variables,
    this.variablesNote,
  });

  factory ZakatTypeModel.fromJson(Map<String, dynamic> json) {
    return ZakatTypeModel(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
      isActive: json['isActive'] as bool?,
      fundTypeId: json['fundTypeId'] as int?,
      fundTypeName: json['fundTypeName'] as String?,
      commodity: json['commodity'] is Map<String, dynamic>
          ? ZakatTypeCommodityModel.fromJson(json['commodity'] as Map<String, dynamic>)
          : null,
      zakatRate: (json['zakatRate'] as num?)?.toDouble(),
      haulMonths: json['haulMonths'] as int?,
      nisabFormula: json['nisabFormula'] as String?,
      zakatFormula: json['zakatFormula'] as String?,
      variables: json['variables'] is Map<String, dynamic>
          ? ZakatTypeVariablesModel.fromJson(json['variables'] as Map<String, dynamic>)
          : null,
      variablesNote: json['variablesNote'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'name': name,
      'description': description,
      'iconUrl': iconUrl,
      'isActive': isActive,
      'fundTypeId': fundTypeId,
      'fundTypeName': fundTypeName,
      'commodity': commodity?.toJson(),
      'zakatRate': zakatRate,
      'haulMonths': haulMonths,
      'nisabFormula': nisabFormula,
      'zakatFormula': zakatFormula,
      'variables': variables?.toJson(),
      'variablesNote': variablesNote,
    };
  }

  factory ZakatTypeModel.fromEntity(ZakatTypeEntity entity) {
    return ZakatTypeModel(
      id: entity.id,
      slug: entity.slug,
      name: entity.name,
      description: entity.description,
      iconUrl: entity.iconUrl,
      isActive: entity.isActive,
      fundTypeId: entity.fundTypeId,
      fundTypeName: entity.fundTypeName,
      commodity: entity.commodity != null
          ? ZakatTypeCommodityModel.fromEntity(entity.commodity!)
          : null,
      zakatRate: entity.zakatRate,
      haulMonths: entity.haulMonths,
      nisabFormula: entity.nisabFormula,
      zakatFormula: entity.zakatFormula,
      variables: entity.variables != null
          ? ZakatTypeVariablesModel.fromEntity(entity.variables!)
          : null,
      variablesNote: entity.variablesNote,
    );
  }

  ZakatTypeEntity toEntity() {
    return ZakatTypeEntity(
      id: id,
      slug: slug,
      name: name,
      description: description,
      iconUrl: iconUrl,
      isActive: isActive,
      fundTypeId: fundTypeId,
      fundTypeName: fundTypeName,
      commodity: commodity?.toEntity(),
      zakatRate: zakatRate,
      haulMonths: haulMonths,
      nisabFormula: nisabFormula,
      zakatFormula: zakatFormula,
      variables: variables?.toEntity(),
      variablesNote: variablesNote,
    );
  }
}

class ZakatTypeCommodityModel {
  final int? id;
  final String? code;
  final String? name;
  final String? unit;
  final double? nisabQuantity;
  final double? pricePerUnit;

  ZakatTypeCommodityModel({
    this.id,
    this.code,
    this.name,
    this.unit,
    this.nisabQuantity,
    this.pricePerUnit,
  });

  factory ZakatTypeCommodityModel.fromJson(Map<String, dynamic> json) {
    return ZakatTypeCommodityModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      nisabQuantity: (json['nisabQuantity'] as num?)?.toDouble(),
      pricePerUnit: (json['pricePerUnit'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'unit': unit,
      'nisabQuantity': nisabQuantity,
      'pricePerUnit': pricePerUnit,
    };
  }

  factory ZakatTypeCommodityModel.fromEntity(ZakatTypeCommodityEntity entity) {
    return ZakatTypeCommodityModel(
      id: entity.id,
      code: entity.code,
      name: entity.name,
      unit: entity.unit,
      nisabQuantity: entity.nisabQuantity,
      pricePerUnit: entity.pricePerUnit,
    );
  }

  ZakatTypeCommodityEntity toEntity() {
    return ZakatTypeCommodityEntity(
      id: id,
      code: code,
      name: name,
      unit: unit,
      nisabQuantity: nisabQuantity,
      pricePerUnit: pricePerUnit,
    );
  }
}

class ZakatTypeVariablesModel {
  final double? price;
  final double? rate;
  final double? nisabQty;

  ZakatTypeVariablesModel({this.price, this.rate, this.nisabQty});

  factory ZakatTypeVariablesModel.fromJson(Map<String, dynamic> json) {
    return ZakatTypeVariablesModel(
      price: (json['price'] as num?)?.toDouble(),
      rate: (json['rate'] as num?)?.toDouble(),
      nisabQty: (json['nisabQty'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'price': price, 'rate': rate, 'nisabQty': nisabQty};
  }

  factory ZakatTypeVariablesModel.fromEntity(ZakatTypeVariablesEntity entity) {
    return ZakatTypeVariablesModel(
      price: entity.price,
      rate: entity.rate,
      nisabQty: entity.nisabQty,
    );
  }

  ZakatTypeVariablesEntity toEntity() {
    return ZakatTypeVariablesEntity(price: price, rate: rate, nisabQty: nisabQty);
  }
}
