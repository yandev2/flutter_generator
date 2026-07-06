import '../../entity/request/zakat_calculate_request_entity.dart';
import '../../entity/response/zakat_calculate_response_entity.dart';
import '../../repository/zakat_repository.dart';

class CalculateZakatUsecase {
  final ZakatRepository repository;

  CalculateZakatUsecase(this.repository);

  Future<ZakatCalculateResponseEntity> call(ZakatCalculateRequestEntity request) async {
    final result = await repository.calculateZakat(request);
    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
