import '../../entity/response/muzzaki_transaction_history_entity.dart';
import '../../repository/muzzaki_repository.dart';

class DetailTransactionUsecase {
  final MuzzakiRepository repository;

  DetailTransactionUsecase(this.repository);

  Future<MuzzakiTransactionHistoryEntity> call(int id) async {
    final result = await repository.detailTransaction(id);

    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
