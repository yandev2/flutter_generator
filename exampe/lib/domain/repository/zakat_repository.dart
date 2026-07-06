import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entity/request/zakat_calculate_request_entity.dart';
import '../entity/response/inventory_item_entity.dart';
import '../entity/response/nisab_rate_entity.dart';
import '../entity/response/zakat_calculate_response_entity.dart';
import '../entity/response/zakat_type_entity.dart';

abstract class ZakatRepository {
  Future<Either<Failure, List<InventoryItemEntity>>> getInventoryItems();
  Future<Either<Failure, List<ZakatTypeEntity>>> getZakatType();
  Future<Either<Failure, List<NisabRateEntity>>> getNisabRates();
  Future<Either<Failure, ZakatCalculateResponseEntity>> calculateZakat(
    ZakatCalculateRequestEntity request,
  );
}
