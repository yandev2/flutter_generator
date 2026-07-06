import '../../../domain/entity/response/muzzaki_transaction_history_entity.dart';
import '../natura_item_model.dart';

class MuzzakiTransactionHistoryModel {
  final int? id;
  final int? programId;
  final String? programName;
  final int? amount;
  final String? paymentMethod;
  final bool? isNatura;
  final List<NaturaItemModel>? naturaItems;
  final String? status;
  final String? paymentDate;
  final String? bszNo;
  final String? receiptUrl;
  final TrackingTimelineModel? trackingTimeline;
  final String? createdAt;
  final String? updatedAt;

  MuzzakiTransactionHistoryModel({
    this.id,
    this.programId,
    this.programName,
    this.amount,
    this.paymentMethod,
    this.isNatura,
    this.naturaItems,
    this.status,
    this.paymentDate,
    this.bszNo,
    this.receiptUrl,
    this.trackingTimeline,
    this.createdAt,
    this.updatedAt,
  });

  factory MuzzakiTransactionHistoryModel.fromJson(Map<String, dynamic> json) {
    return MuzzakiTransactionHistoryModel(
      id: json['id'] as int?,
      programId: json['programId'] as int?,
      programName: json['programName'] as String?,
      amount: json['amount'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
      isNatura: json['isNatura'] as bool?,
      naturaItems: (json['naturaItems'] as List<dynamic>?)
          ?.map((e) => NaturaItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      paymentDate: json['paymentDate'] as String?,
      bszNo: json['bszNo'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      trackingTimeline: json['trackingTimeline'] != null
          ? TrackingTimelineModel.fromJson(json['trackingTimeline'] as Map<String, dynamic>)
          : null,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'programId': programId,
      'programName': programName,
      'amount': amount,
      'paymentMethod': paymentMethod,
      'isNatura': isNatura,
      'naturaItems': naturaItems?.map((e) => e.toJson()).toList(),
      'status': status,
      'paymentDate': paymentDate,
      'bszNo': bszNo,
      'receiptUrl': receiptUrl,
      'trackingTimeline': trackingTimeline?.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory MuzzakiTransactionHistoryModel.fromEntity(MuzzakiTransactionHistoryEntity entity) {
    return MuzzakiTransactionHistoryModel(
      id: entity.id,
      programId: entity.programId,
      programName: entity.programName,
      amount: entity.amount,
      paymentMethod: entity.paymentMethod,
      isNatura: entity.isNatura,
      naturaItems: entity.naturaItems?.map((e) => NaturaItemModel.fromEntity(e)).toList(),
      status: entity.status,
      paymentDate: entity.paymentDate,
      bszNo: entity.bszNo,
      receiptUrl: entity.receiptUrl,
      trackingTimeline: entity.trackingTimeline != null
          ? TrackingTimelineModel.fromEntity(entity.trackingTimeline!)
          : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  MuzzakiTransactionHistoryEntity toEntity() {
    return MuzzakiTransactionHistoryEntity(
      id: id,
      programId: programId,
      programName: programName,
      amount: amount,
      paymentMethod: paymentMethod,
      isNatura: isNatura,
      naturaItems: naturaItems?.map((e) => e.toEntity()).toList(),
      status: status,
      paymentDate: paymentDate,
      bszNo: bszNo,
      receiptUrl: receiptUrl,
      trackingTimeline: trackingTimeline?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

class TrackingTimelineModel {
  final String? paymentReceivedAt;
  final String? verifiedAt;
  final String? allocatedAt;
  final String? distributedAt;

  TrackingTimelineModel({
    this.paymentReceivedAt,
    this.verifiedAt,
    this.allocatedAt,
    this.distributedAt,
  });

  factory TrackingTimelineModel.fromJson(Map<String, dynamic> json) {
    return TrackingTimelineModel(
      paymentReceivedAt: json['paymentReceivedAt'] as String?,
      verifiedAt: json['verifiedAt'] as String?,
      allocatedAt: json['allocatedAt'] as String?,
      distributedAt: json['distributedAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentReceivedAt': paymentReceivedAt,
      'verifiedAt': verifiedAt,
      'allocatedAt': allocatedAt,
      'distributedAt': distributedAt,
    };
  }

  factory TrackingTimelineModel.fromEntity(TrackingTimelineEntity entity) {
    return TrackingTimelineModel(
      paymentReceivedAt: entity.paymentReceivedAt,
      verifiedAt: entity.verifiedAt,
      allocatedAt: entity.allocatedAt,
      distributedAt: entity.distributedAt,
    );
  }

  TrackingTimelineEntity toEntity() {
    return TrackingTimelineEntity(
      paymentReceivedAt: paymentReceivedAt,
      verifiedAt: verifiedAt,
      allocatedAt: allocatedAt,
      distributedAt: distributedAt,
    );
  }
}
