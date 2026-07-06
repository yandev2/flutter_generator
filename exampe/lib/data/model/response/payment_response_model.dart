import '../../../domain/entity/response/payment_response_entity.dart';

class PaymentResponseModel {
  final int? donationId;
  final int? transactionId;
  final bool? isGuest;
  final bool? isNatura;
  final PaymentDetailModel? payment;
  final String? invoiceNumber;
  final String? status;
  final String? paymentUrl;
  final BankAccountInfoModel? bankAccount;
  final String? createdAt;

  PaymentResponseModel({
    this.donationId,
    this.transactionId,
    this.isGuest,
    this.isNatura,
    this.payment,
    this.invoiceNumber,
    this.status,
    this.paymentUrl,
    this.bankAccount,
    this.createdAt,
  });

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) {
    return PaymentResponseModel(
      donationId: json['donationId'] as int?,
      transactionId: json['transactionId'] as int?,
      isGuest: json['isGuest'] as bool?,
      isNatura: json['isNatura'] as bool?,
      payment: json['payment'] != null
          ? PaymentDetailModel.fromJson(json['payment'] as Map<String, dynamic>)
          : null,
      invoiceNumber: json['invoiceNumber'] as String?,
      status: json['status'] as String?,
      paymentUrl: json['paymentUrl'] as String?,
      bankAccount: json['bankAccount'] != null
          ? BankAccountInfoModel.fromJson(json['bankAccount'] as Map<String, dynamic>)
          : null,
      createdAt: json['createdAt'] as String?,
    );
  }

  PaymentResponseEntity toEntity() {
    return PaymentResponseEntity(
      donationId: donationId,
      transactionId: transactionId,
      isGuest: isGuest,
      isNatura: isNatura,
      payment: payment?.toEntity(),
      invoiceNumber: invoiceNumber,
      status: status,
      paymentUrl: paymentUrl,
      bankAccount: bankAccount?.toEntity(),
      createdAt: createdAt,
    );
  }
}

class PaymentDetailModel {
  final String? provider;
  final bool? isDummy;
  final String? method;
  final String? status;
  final String? paymentUrl;
  final String? virtualAccount;
  final int? amount;
  final String? expiresAt;
  final String? note;

  PaymentDetailModel({
    this.provider,
    this.isDummy,
    this.method,
    this.status,
    this.paymentUrl,
    this.virtualAccount,
    this.amount,
    this.expiresAt,
    this.note,
  });

  factory PaymentDetailModel.fromJson(Map<String, dynamic> json) {
    return PaymentDetailModel(
      provider: json['provider'] as String?,
      isDummy: json['isDummy'] as bool?,
      method: json['method'] as String?,
      status: json['status'] as String?,
      paymentUrl: json['paymentUrl'] as String?,
      virtualAccount: json['virtualAccount'] as String?,
      amount: json['amount'] as int?,
      expiresAt: json['expiresAt'] as String?,
      note: json['note'] as String?,
    );
  }

  PaymentDetailEntity toEntity() {
    return PaymentDetailEntity(
      provider: provider,
      isDummy: isDummy,
      method: method,
      status: status,
      paymentUrl: paymentUrl,
      virtualAccount: virtualAccount,
      amount: amount,
      expiresAt: expiresAt,
      note: note,
    );
  }
}

class BankAccountInfoModel {
  final String? bankName;
  final String? accountNumber;
  final String? accountName;

  BankAccountInfoModel({this.bankName, this.accountNumber, this.accountName});

  factory BankAccountInfoModel.fromJson(Map<String, dynamic> json) {
    return BankAccountInfoModel(
      bankName: json['bankName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      accountName: json['accountName'] as String?,
    );
  }

  BankAccountInfoEntity toEntity() {
    return BankAccountInfoEntity(
      bankName: bankName,
      accountNumber: accountNumber,
      accountName: accountName,
    );
  }
}
