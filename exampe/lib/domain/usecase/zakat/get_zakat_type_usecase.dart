import '../../entity/response/zakat_type_entity.dart';
import '../../repository/zakat_repository.dart';

class GetZakatTypeUsecase {
  final ZakatRepository repository;

  GetZakatTypeUsecase(this.repository);

  Future<List<ZakatTypeEntity>> call() async {
    final result = await repository.getZakatType();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
