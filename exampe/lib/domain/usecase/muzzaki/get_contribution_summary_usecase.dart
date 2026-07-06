import '../../entity/response/muzakki_contribution_summary_entity.dart';
import '../../repository/muzzaki_repository.dart';

class GetContributionSummaryUsecase {
  final MuzzakiRepository repository;

  GetContributionSummaryUsecase(this.repository);

  Future<MuzakkiContributionSummaryEntity> call() async {
    final result = await repository.getContributionSummary();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
