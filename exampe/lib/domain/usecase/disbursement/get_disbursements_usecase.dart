import '../../entity/paginated_list_entity.dart';
import '../../entity/response/disbursement_item_list_entity.dart';
import '../../repository/disbursement_repository.dart';

class GetDisbursementsUsecase {
  final DisbursementRepository repository;

  GetDisbursementsUsecase(this.repository);

  Future<PaginatedListEntity<DisbursementItemListEntity>> call({
    int? programId,
    int page = 1,
  }) async {
    final result = await repository.getDisbursements(programId: programId, page: page);

    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
