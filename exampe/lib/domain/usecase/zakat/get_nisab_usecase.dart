
import '../../entity/response/nisab_rate_entity.dart';
import '../../repository/zakat_repository.dart';

class GetNisabUsecase {
  final ZakatRepository repository;

  GetNisabUsecase(this.repository);

  Future<List<NisabRateEntity>> call() async {
    final result = await repository.getNisabRates();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
