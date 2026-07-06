import '../../../domain/entity/response/amil_penghimpun_dashboard_response_entity.dart';

class AmilPenghimpunDashboardResponseModel {
  final AmilInfoModel? amilInfo;
  final AmilKpiModel? kpi;
  final List<AmilActivityFeedModel>? activityFeed;

  AmilPenghimpunDashboardResponseModel({
    this.amilInfo,
    this.kpi,
    this.activityFeed,
  });

  factory AmilPenghimpunDashboardResponseModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return AmilPenghimpunDashboardResponseModel(
      amilInfo: json['amilInfo'] != null
          ? AmilInfoModel.fromJson(json['amilInfo'] as Map<String, dynamic>)
          : null,
      kpi: json['kpi'] != null
          ? AmilKpiModel.fromJson(json['kpi'] as Map<String, dynamic>)
          : null,
      activityFeed: (json['activityFeed'] as List<dynamic>?)
          ?.map(
            (e) => AmilActivityFeedModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amilInfo': amilInfo?.toJson(),
      'kpi': kpi?.toJson(),
      'activityFeed': activityFeed?.map((e) => e.toJson()).toList(),
    };
  }

  factory AmilPenghimpunDashboardResponseModel.fromEntity(
    AmilPenghimpunDashboardResponseEntity entity,
  ) {
    return AmilPenghimpunDashboardResponseModel(
      amilInfo: entity.amilInfo != null
          ? AmilInfoModel.fromEntity(entity.amilInfo!)
          : null,
      kpi: entity.kpi != null ? AmilKpiModel.fromEntity(entity.kpi!) : null,
      activityFeed: entity.activityFeed
          ?.map((e) => AmilActivityFeedModel.fromEntity(e))
          .toList(),
    );
  }

  AmilPenghimpunDashboardResponseEntity toEntity() {
    return AmilPenghimpunDashboardResponseEntity(
      amilInfo: amilInfo?.toEntity(),
      kpi: kpi?.toEntity(),
      activityFeed: activityFeed?.map((e) => e.toEntity()).toList(),
    );
  }
}

class AmilInfoModel {
  final int? id;
  final String? name;
  final String? amilType;
  final int? upzId;

  AmilInfoModel({this.id, this.name, this.amilType, this.upzId});

  factory AmilInfoModel.fromJson(Map<String, dynamic> json) {
    return AmilInfoModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      amilType: json['amilType'] as String?,
      upzId: json['upzId'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'amilType': amilType, 'upzId': upzId};
  }

  factory AmilInfoModel.fromEntity(AmilInfoEntity entity) {
    return AmilInfoModel(
      id: entity.id,
      name: entity.name,
      amilType: entity.amilType,
      upzId: entity.upzId,
    );
  }

  AmilInfoEntity toEntity() {
    //  Sudah diperbaiki ke named arguments
    return AmilInfoEntity(id: id, name: name, amilType: amilType, upzId: upzId);
  }
}

class AmilKpiModel {
  final int? todayCollection;
  final int? monthlyTarget;
  final int? activeTasksCount;

  AmilKpiModel({
    this.todayCollection,
    this.monthlyTarget,
    this.activeTasksCount,
  });

  factory AmilKpiModel.fromJson(Map<String, dynamic> json) {
    return AmilKpiModel(
      todayCollection: json['todayCollection'] as int?,
      monthlyTarget: json['monthlyTarget'] as int?,
      activeTasksCount: json['activeTasksCount'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'todayCollection': todayCollection,
      'monthlyTarget': monthlyTarget,
      'activeTasksCount': activeTasksCount,
    };
  }

  factory AmilKpiModel.fromEntity(AmilKpiEntity entity) {
    return AmilKpiModel(
      todayCollection: entity.todayCollection,
      monthlyTarget: entity.monthlyTarget,
      activeTasksCount: entity.activeTasksCount,
    );
  }

  AmilKpiEntity toEntity() {
    return AmilKpiEntity(
      todayCollection: todayCollection,
      monthlyTarget: monthlyTarget,
      activeTasksCount: activeTasksCount,
    );
  }
}

class AmilActivityFeedModel {
  final int? id;
  final String? type;
  final String? description;
  final int? amount;
  final String? createdAt;

  AmilActivityFeedModel({
    this.id,
    this.type,
    this.description,
    this.amount,
    this.createdAt,
  });

  factory AmilActivityFeedModel.fromJson(Map<String, dynamic> json) {
    return AmilActivityFeedModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      createdAt: json['createdAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'description': description,
      'amount': amount,
      'createdAt': createdAt,
    };
  }

  factory AmilActivityFeedModel.fromEntity(AmilActivityFeedEntity entity) {
    return AmilActivityFeedModel(
      id: entity.id,
      type: entity.type,
      description: entity.description,
      amount: entity.amount,
      createdAt: entity.createdAt,
    );
  }

  AmilActivityFeedEntity toEntity() {
    return AmilActivityFeedEntity(
      id: id,
      type: type,
      description: description,
      amount: amount,
      createdAt: createdAt,
    );
  }
}
