// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muzzaki_transaction_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuzzakiTransactionHistoryEntity _$MuzzakiTransactionHistoryEntityFromJson(
  Map<String, dynamic> json,
) => _MuzzakiTransactionHistoryEntity(
  id: (json['id'] as num?)?.toInt(),
  programId: (json['programId'] as num?)?.toInt(),
  programName: json['programName'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  paymentMethod: json['paymentMethod'] as String?,
  isNatura: json['isNatura'] as bool?,
  naturaItems: (json['naturaItems'] as List<dynamic>?)
      ?.map((e) => NaturaItemEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as String?,
  paymentDate: json['paymentDate'] as String?,
  bszNo: json['bszNo'] as String?,
  receiptUrl: json['receiptUrl'] as String?,
  trackingTimeline: json['trackingTimeline'] == null
      ? null
      : TrackingTimelineEntity.fromJson(
          json['trackingTimeline'] as Map<String, dynamic>,
        ),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$MuzzakiTransactionHistoryEntityToJson(
  _MuzzakiTransactionHistoryEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'programId': instance.programId,
  'programName': instance.programName,
  'amount': instance.amount,
  'paymentMethod': instance.paymentMethod,
  'isNatura': instance.isNatura,
  'naturaItems': instance.naturaItems,
  'status': instance.status,
  'paymentDate': instance.paymentDate,
  'bszNo': instance.bszNo,
  'receiptUrl': instance.receiptUrl,
  'trackingTimeline': instance.trackingTimeline,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_TrackingTimelineEntity _$TrackingTimelineEntityFromJson(
  Map<String, dynamic> json,
) => _TrackingTimelineEntity(
  paymentReceivedAt: json['paymentReceivedAt'] as String?,
  verifiedAt: json['verifiedAt'] as String?,
  allocatedAt: json['allocatedAt'] as String?,
  distributedAt: json['distributedAt'] as String?,
);

Map<String, dynamic> _$TrackingTimelineEntityToJson(
  _TrackingTimelineEntity instance,
) => <String, dynamic>{
  'paymentReceivedAt': instance.paymentReceivedAt,
  'verifiedAt': instance.verifiedAt,
  'allocatedAt': instance.allocatedAt,
  'distributedAt': instance.distributedAt,
};
