
import '../../entity/response/disbursement_entity.dart';
import '../../repository/disbursement_repository.dart';

class DetailDisbursementUsecase {
  final DisbursementRepository repository;

  DetailDisbursementUsecase(this.repository);

  Future<DisbursementEntity> call(int id) async {
    final result = await repository.detailDisbursement(id);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
