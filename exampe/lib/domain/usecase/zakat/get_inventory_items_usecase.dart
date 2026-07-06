import '../../entity/response/inventory_item_entity.dart';
import '../../repository/zakat_repository.dart';

class GetInventoryItemsUsecase {
  final ZakatRepository repository;

  GetInventoryItemsUsecase(this.repository);

  Future<List<InventoryItemEntity>> call() async {
    final result = await repository.getInventoryItems();

    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
