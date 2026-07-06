// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProgramEntity _$ProgramEntityFromJson(Map<String, dynamic> json) =>
    _ProgramEntity(
      id: (json['id'] as num?)?.toInt(),
      fundTypeId: (json['fundTypeId'] as num?)?.toInt(),
      fundType: json['fundType'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      targetAmount: (json['targetAmount'] as num?)?.toInt(),
      amilPercentageFee: (json['amilPercentageFee'] as num?)?.toDouble(),
      isZakatFitrah: json['isZakatFitrah'] as bool?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      bannerUrl: json['bannerUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      lastDonaturAvatar: (json['lastDonaturAvatar'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : ProgramStatisticsEntity.fromJson(
              json['statistics'] as Map<String, dynamic>,
            ),
      lastDonation: json['lastDonation'] == null
          ? null
          : ProgramLastDonationEntity.fromJson(
              json['lastDonation'] as Map<String, dynamic>,
            ),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      distributionSummary: json['distributionSummary'] == null
          ? null
          : ProgramDistributionSummaryEntity.fromJson(
              json['distributionSummary'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProgramEntityToJson(_ProgramEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fundTypeId': instance.fundTypeId,
      'fundType': instance.fundType,
      'name': instance.name,
      'description': instance.description,
      'targetAmount': instance.targetAmount,
      'amilPercentageFee': instance.amilPercentageFee,
      'isZakatFitrah': instance.isZakatFitrah,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'bannerUrl': instance.bannerUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'lastDonaturAvatar': instance.lastDonaturAvatar,
      'statistics': instance.statistics,
      'lastDonation': instance.lastDonation,
      'documentation': instance.documentation,
      'distributionSummary': instance.distributionSummary,
    };

_ProgramStatisticsEntity _$ProgramStatisticsEntityFromJson(
  Map<String, dynamic> json,
) => _ProgramStatisticsEntity(
  donaturCount: (json['donaturCount'] as num?)?.toInt(),
  fundsCollected: (json['fundsCollected'] as num?)?.toInt(),
  percentTarget: (json['percentTarget'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ProgramStatisticsEntityToJson(
  _ProgramStatisticsEntity instance,
) => <String, dynamic>{
  'donaturCount': instance.donaturCount,
  'fundsCollected': instance.fundsCollected,
  'percentTarget': instance.percentTarget,
};

_ProgramLastDonationEntity _$ProgramLastDonationEntityFromJson(
  Map<String, dynamic> json,
) => _ProgramLastDonationEntity(
  amount: (json['amount'] as num?)?.toInt(),
  time: json['time'] as String?,
);

Map<String, dynamic> _$ProgramLastDonationEntityToJson(
  _ProgramLastDonationEntity instance,
) => <String, dynamic>{'amount': instance.amount, 'time': instance.time};

_ProgramDistributionSummaryEntity _$ProgramDistributionSummaryEntityFromJson(
  Map<String, dynamic> json,
) => _ProgramDistributionSummaryEntity(
  distributed: (json['distributed'] as num?)?.toInt(),
  totalDistributedPercent: (json['totalDistributedPercent'] as num?)
      ?.toDouble(),
  remainingFunds: (json['remainingFunds'] as num?)?.toInt(),
  totalRemainingPercent: (json['totalRemainingPercent'] as num?)?.toDouble(),
  lastUpdated: json['lastUpdated'] as String?,
);

Map<String, dynamic> _$ProgramDistributionSummaryEntityToJson(
  _ProgramDistributionSummaryEntity instance,
) => <String, dynamic>{
  'distributed': instance.distributed,
  'totalDistributedPercent': instance.totalDistributedPercent,
  'remainingFunds': instance.remainingFunds,
  'totalRemainingPercent': instance.totalRemainingPercent,
  'lastUpdated': instance.lastUpdated,
};
