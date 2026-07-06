import '../../entity/paginated_list_entity.dart';
import '../../entity/response/muzzaki_transaction_item_list_entity.dart';
import '../../repository/muzzaki_repository.dart';

class GetTransactionHistoryUsecase {
  final MuzzakiRepository repository;

  GetTransactionHistoryUsecase(this.repository);

  Future<PaginatedListEntity<MuzzakiTransactionItemListEntity>> call({
    String? status,
    int page = 1,
  }) async {
    final result = await repository.getHistoryTransaction(status: status, page: page);
    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
