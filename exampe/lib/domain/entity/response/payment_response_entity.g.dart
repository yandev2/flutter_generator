// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponseEntity _$PaymentResponseEntityFromJson(
  Map<String, dynamic> json,
) => _PaymentResponseEntity(
  donationId: (json['donationId'] as num?)?.toInt(),
  transactionId: (json['transactionId'] as num?)?.toInt(),
  isGuest: json['isGuest'] as bool?,
  isNatura: json['isNatura'] as bool?,
  payment: json['payment'] == null
      ? null
      : PaymentDetailEntity.fromJson(json['payment'] as Map<String, dynamic>),
  invoiceNumber: json['invoiceNumber'] as String?,
  status: json['status'] as String?,
  paymentUrl: json['paymentUrl'] as String?,
  bankAccount: json['bankAccount'] == null
      ? null
      : BankAccountInfoEntity.fromJson(
          json['bankAccount'] as Map<String, dynamic>,
        ),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$PaymentResponseEntityToJson(
  _PaymentResponseEntity instance,
) => <String, dynamic>{
  'donationId': instance.donationId,
  'transactionId': instance.transactionId,
  'isGuest': instance.isGuest,
  'isNatura': instance.isNatura,
  'payment': instance.payment,
  'invoiceNumber': instance.invoiceNumber,
  'status': instance.status,
  'paymentUrl': instance.paymentUrl,
  'bankAccount': instance.bankAccount,
  'createdAt': instance.createdAt,
};

_BankAccountInfoEntity _$BankAccountInfoEntityFromJson(
  Map<String, dynamic> json,
) => _BankAccountInfoEntity(
  bankName: json['bankName'] as String?,
  accountNumber: json['accountNumber'] as String?,
  accountName: json['accountName'] as String?,
);

Map<String, dynamic> _$BankAccountInfoEntityToJson(
  _BankAccountInfoEntity instance,
) => <String, dynamic>{
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'accountName': instance.accountName,
};

_PaymentDetailEntity _$PaymentDetailEntityFromJson(Map<String, dynamic> json) =>
    _PaymentDetailEntity(
      provider: json['provider'] as String?,
      isDummy: json['isDummy'] as bool?,
      method: json['method'] as String?,
      status: json['status'] as String?,
      paymentUrl: json['paymentUrl'] as String?,
      virtualAccount: json['virtualAccount'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      expiresAt: json['expiresAt'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$PaymentDetailEntityToJson(
  _PaymentDetailEntity instance,
) => <String, dynamic>{
  'provider': instance.provider,
  'isDummy': instance.isDummy,
  'method': instance.method,
  'status': instance.status,
  'paymentUrl': instance.paymentUrl,
  'virtualAccount': instance.virtualAccount,
  'amount': instance.amount,
  'expiresAt': instance.expiresAt,
  'note': instance.note,
};
