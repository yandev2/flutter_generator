import '../../../domain/entity/response/program_entity.dart';

class ProgramModel {
  final int? id;
  final int? fundTypeId;
  final String? fundType;
  final String? name;
  final String? description;
  final int? targetAmount;
  final double? amilPercentageFee;
  final bool? isZakatFitrah;
  final String? startDate;
  final String? endDate;
  final String? bannerUrl;
  final String? thumbnailUrl;
  final bool? isActive;
  final String? createdAt;
  final String? updatedAt;
  final List<String>? lastDonaturAvatar;
  final ProgramStatisticsModel? statistics;
  final ProgramLastDonationModel? lastDonation;
  final List<String>? documentation;
  final ProgramDistributionSummaryModel? distributionSummary;

  ProgramModel({
    this.id,
    this.fundTypeId,
    this.fundType,
    this.name,
    this.description,
    this.targetAmount,
    this.amilPercentageFee,
    this.isZakatFitrah,
    this.startDate,
    this.endDate,
    this.bannerUrl,
    this.thumbnailUrl,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.lastDonaturAvatar,
    this.statistics,
    this.lastDonation,
    this.documentation,
    this.distributionSummary,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) {
    return ProgramModel(
      id: json['id'] as int?,
      fundTypeId: json['fundTypeId'] as int?,
      fundType: json['fundType'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      targetAmount: json['targetAmount'] as int?,
      amilPercentageFee: (json['amilPercentageFee'] as num?)?.toDouble(),
      isZakatFitrah: json['isZakatFitrah'] as bool?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      bannerUrl: json['bannerUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      lastDonaturAvatar: (json['last_donatur_avatar'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      statistics: json['statistics'] != null
          ? ProgramStatisticsModel.fromJson(
              json['statistics'] as Map<String, dynamic>,
            )
          : null,
      lastDonation: json['lastDonation'] != null
          ? ProgramLastDonationModel.fromJson(
              json['lastDonation'] as Map<String, dynamic>,
            )
          : null,
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      distributionSummary: json['distributionSummary'] != null
          ? ProgramDistributionSummaryModel.fromJson(
              json['distributionSummary'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fundType': fundType,
      'fundTypeId': fundTypeId,
      'name': name,
      'description': description,
      'targetAmount': targetAmount,
      'amilPercentageFee': amilPercentageFee,
      'isZakatFitrah': isZakatFitrah,
      'startDate': startDate,
      'endDate': endDate,
      'bannerUrl': bannerUrl,
      'thumbnailUrl': thumbnailUrl,
      'isActive': isActive,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'last_donatur_avatar': lastDonaturAvatar,
      'statistics': statistics?.toJson(),
      'lastDonation': lastDonation?.toJson(),
      'documentation': documentation,
      'distributionSummary': distributionSummary?.toJson(),
    };
  }

  factory ProgramModel.fromEntity(ProgramEntity entity) {
    return ProgramModel(
      id: entity.id,
      fundTypeId: entity.fundTypeId,
      fundType: entity.fundType,
      name: entity.name,
      description: entity.description,
      targetAmount: entity.targetAmount,
      amilPercentageFee: entity.amilPercentageFee,
      isZakatFitrah: entity.isZakatFitrah,
      startDate: entity.startDate,
      endDate: entity.endDate,
      bannerUrl: entity.bannerUrl,
      thumbnailUrl: entity.thumbnailUrl,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      lastDonaturAvatar: entity.lastDonaturAvatar,
      statistics: entity.statistics != null
          ? ProgramStatisticsModel.fromEntity(entity.statistics!)
          : null,
      lastDonation: entity.lastDonation != null
          ? ProgramLastDonationModel.fromEntity(entity.lastDonation!)
          : null,
      documentation: entity.documentation,
      distributionSummary: entity.distributionSummary != null
          ? ProgramDistributionSummaryModel.fromEntity(
              entity.distributionSummary!,
            )
          : null,
    );
  }

  ProgramEntity toEntity() {
    return ProgramEntity(
      id: id,
      fundTypeId: fundTypeId,
      fundType: fundType,
      name: name,
      description: description,
      targetAmount: targetAmount,
      amilPercentageFee: amilPercentageFee,
      isZakatFitrah: isZakatFitrah,
      startDate: startDate,
      endDate: endDate,
      bannerUrl: bannerUrl,
      thumbnailUrl: thumbnailUrl,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastDonaturAvatar: lastDonaturAvatar,
      statistics: statistics?.toEntity(),
      lastDonation: lastDonation?.toEntity(),
      documentation: documentation,
      distributionSummary: distributionSummary?.toEntity(),
    );
  }
}

class ProgramStatisticsModel {
  final int? donaturCount;
  final int? fundsCollected;
  final double? percentTarget;

  ProgramStatisticsModel({
    this.donaturCount,
    this.fundsCollected,
    this.percentTarget,
  });

  factory ProgramStatisticsModel.fromJson(Map<String, dynamic> json) {
    return ProgramStatisticsModel(
      donaturCount: json['donaturCount'] as int?,
      fundsCollected: json['fundsCollected'] as int?,
      percentTarget: (json['percentTarget'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'donaturCount': donaturCount,
      'fundsCollected': fundsCollected,
      'percentTarget': percentTarget,
    };
  }

  factory ProgramStatisticsModel.fromEntity(ProgramStatisticsEntity entity) {
    return ProgramStatisticsModel(
      donaturCount: entity.donaturCount,
      fundsCollected: entity.fundsCollected,
      percentTarget: entity.percentTarget,
    );
  }

  ProgramStatisticsEntity toEntity() {
    return ProgramStatisticsEntity(
      donaturCount: donaturCount,
      fundsCollected: fundsCollected,
      percentTarget: percentTarget,
    );
  }
}

class ProgramLastDonationModel {
  final int? amount;
  final String? time;

  ProgramLastDonationModel({this.amount, this.time});

  factory ProgramLastDonationModel.fromJson(Map<String, dynamic> json) {
    return ProgramLastDonationModel(
      amount: json['amount'] as int?,
      time: json['time'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'amount': amount, 'time': time};
  }

  factory ProgramLastDonationModel.fromEntity(
    ProgramLastDonationEntity entity,
  ) {
    return ProgramLastDonationModel(amount: entity.amount, time: entity.time);
  }

  ProgramLastDonationEntity toEntity() {
    return ProgramLastDonationEntity(amount: amount, time: time);
  }
}

class ProgramDistributionSummaryModel {
  final int? distributed;
  final double? totalDistributedPercent;
  final int? remainingFunds;
  final double? totalRemainingPercent;
  final String? lastUpdated;

  ProgramDistributionSummaryModel({
    this.distributed,
    this.totalDistributedPercent,
    this.remainingFunds,
    this.totalRemainingPercent,
    this.lastUpdated,
  });

  factory ProgramDistributionSummaryModel.fromJson(Map<String, dynamic> json) {
    return ProgramDistributionSummaryModel(
      distributed: json['distributed'] as int?,
      totalDistributedPercent: (json['totalDistributedPercent'] as num?)
          ?.toDouble(),
      remainingFunds: json['remainingFunds'] as int?,
      totalRemainingPercent: (json['totalRemainingPercent'] as num?)
          ?.toDouble(),
      lastUpdated: json['lastUpdated'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'distributed': distributed,
      'totalDistributedPercent': totalDistributedPercent,
      'remainingFunds': remainingFunds,
      'totalRemainingPercent': totalRemainingPercent,
      'lastUpdated': lastUpdated,
    };
  }

  factory ProgramDistributionSummaryModel.fromEntity(
    ProgramDistributionSummaryEntity entity,
  ) {
    return ProgramDistributionSummaryModel(
      distributed: entity.distributed,
      totalDistributedPercent: entity.totalDistributedPercent,
      remainingFunds: entity.remainingFunds,
      totalRemainingPercent: entity.totalRemainingPercent,
      lastUpdated: entity.lastUpdated,
    );
  }

  ProgramDistributionSummaryEntity toEntity() {
    return ProgramDistributionSummaryEntity(
      distributed: distributed,
      totalDistributedPercent: totalDistributedPercent,
      remainingFunds: remainingFunds,
      totalRemainingPercent: totalRemainingPercent,
      lastUpdated: lastUpdated,
    );
  }
}
