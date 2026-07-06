import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response_entity.freezed.dart';
part 'payment_response_entity.g.dart';

/// Digunakan untuk semua jenis transaksi: Zakat, Infak, Wakaf, Anonim, dll.
@freezed
abstract class PaymentResponseEntity with _$PaymentResponseEntity {
  const factory PaymentResponseEntity({
    int? donationId,
    int? transactionId,

    bool? isGuest,
    bool? isNatura,
    PaymentDetailEntity? payment,
    String? invoiceNumber,
    String? status,
    String? paymentUrl,
    BankAccountInfoEntity? bankAccount,
    String? createdAt,
  }) = _PaymentResponseEntity;

  factory PaymentResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseEntityFromJson(json);
}

/// Informasi rekening bank — disertakan dalam response Transfer Manual
@freezed
abstract class BankAccountInfoEntity with _$BankAccountInfoEntity {
  const factory BankAccountInfoEntity({
    String? bankName,
    String? accountNumber,
    String? accountName,
  }) = _BankAccountInfoEntity;

  factory BankAccountInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BankAccountInfoEntityFromJson(json);
}

/// Detail pembayaran, menampung response dari provider payment gateway
@freezed
abstract class PaymentDetailEntity with _$PaymentDetailEntity {
  const factory PaymentDetailEntity({
    String? provider,
    bool? isDummy,
    String? method,
    String? status,
    String? paymentUrl,
    String? virtualAccount,
    int? amount,
    String? expiresAt,
    String? note,
  }) = _PaymentDetailEntity;

  factory PaymentDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailEntityFromJson(json);
}
