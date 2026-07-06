import '../../../domain/entity/response/muzakki_dashboard_response_entity.dart';
import 'muzakki_contribution_summary_model.dart';
import 'programs_item_list_model.dart';
import 'user_data_model.dart';

class MuzakkiDashboardResponseModel {
  final UserDataModel? user;
  final MuzakkiContributionSummaryModel? contributionSummary;
  final List<ProgramsItemListModel>? featuredPrograms;

  MuzakkiDashboardResponseModel({this.user, this.contributionSummary, this.featuredPrograms});

  factory MuzakkiDashboardResponseModel.fromJson(Map<String, dynamic> json) {
    return MuzakkiDashboardResponseModel(
      user: json['user'] != null
          ? UserDataModel.fromJson(json['user'] as Map<String, dynamic>)
          : null,
      contributionSummary: json['contributionSummary'] != null
          ? MuzakkiContributionSummaryModel.fromJson(
              json['contributionSummary'] as Map<String, dynamic>,
            )
          : null,
      featuredPrograms: (json['featuredPrograms'] as List<dynamic>?)
          ?.map((e) => ProgramsItemListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user?.toJson(),
      'contributionSummary': contributionSummary?.toJson(),
      'featuredPrograms': featuredPrograms?.map((e) => e.toJson()).toList(),
    };
  }

  factory MuzakkiDashboardResponseModel.fromEntity(MuzakkiDashboardResponseEntity entity) {
    return MuzakkiDashboardResponseModel(
      user: entity.user != null ? UserDataModel.fromEntity(entity.user!) : null,
      contributionSummary: entity.contributionSummary != null
          ? MuzakkiContributionSummaryModel.fromEntity(entity.contributionSummary!)
          : null,
      featuredPrograms: entity.featuredPrograms
          ?.map((e) => ProgramsItemListModel.fromEntity(e))
          .toList(),
    );
  }

  MuzakkiDashboardResponseEntity toEntity() {
    return MuzakkiDashboardResponseEntity(
      user: user?.toEntity(),
      contributionSummary: contributionSummary?.toEntity(),
      featuredPrograms: featuredPrograms?.map((e) => e.toEntity()).toList(),
    );
  }
}
