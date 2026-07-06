import '../../../domain/entity/response/zakat_calculate_response_entity.dart';

class ZakatCalculateResponseModel {
  final int? zakatTypeId;
  final String? zakatTypeName;
  final String? slug;
  final int? asset;
  final int? people;
  final int? nisabValue;
  final int? zakatAmount;
  final bool? isWajib;
  final bool? isMustahik;
  final String? currency;
  final String? message;

  ZakatCalculateResponseModel({
    this.zakatTypeId,
    this.zakatTypeName,
    this.slug,
    this.asset,
    this.people,
    this.nisabValue,
    this.zakatAmount,
    this.isWajib,
    this.isMustahik,
    this.currency,
    this.message,
  });

  factory ZakatCalculateResponseModel.fromJson(Map<String, dynamic> json) {
    return ZakatCalculateResponseModel(
      zakatTypeId: json['zakatTypeId'] as int?,
      zakatTypeName: json['zakatTypeName'] as String?,
      slug: json['slug'] as String?,
      asset: (json['asset'] as num?)?.toInt(),
      people: (json['people'] as num?)?.toInt(),
      nisabValue: (json['nisabValue'] as num?)?.toInt(),
      zakatAmount: (json['zakatAmount'] as num?)?.toInt(),
      isWajib: json['isWajib'] as bool?,
      isMustahik: json['isMustahik'] as bool?,
      currency: json['currency'] as String?,
      message: json['message'] as String?,
    );
  }

  ZakatCalculateResponseEntity toEntity() {
    return ZakatCalculateResponseEntity(
      zakatTypeId: zakatTypeId,
      zakatTypeName: zakatTypeName,
      slug: slug,
      asset: asset,
      people: people,
      nisabValue: nisabValue,
      zakatAmount: zakatAmount,
      isWajib: isWajib,
      isMustahik: isMustahik,
      currency: currency,
      message: message,
    );
  }
}
