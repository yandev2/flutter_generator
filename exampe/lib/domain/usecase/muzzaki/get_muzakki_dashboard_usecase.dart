import '../../entity/response/muzakki_dashboard_response_entity.dart';
import '../../repository/muzzaki_repository.dart';

class GetMuzzakiDashboardUsecase {
  final MuzzakiRepository repository;

  GetMuzzakiDashboardUsecase(this.repository);

  Future<MuzakkiDashboardResponseEntity> call() async {
    final result = await repository.getDashboard();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
