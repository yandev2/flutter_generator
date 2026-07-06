import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entity/response/disbursement_entity.dart';
import '../entity/response/disbursement_item_list_entity.dart';
import '../entity/paginated_list_entity.dart';

abstract class DisbursementRepository {
  Future<Either<Failure, PaginatedListEntity<DisbursementItemListEntity>>> getDisbursements({
    int? programId,
    int page = 1,
  });

  Future<Either<Failure, DisbursementEntity>> detailDisbursement(int disbursementId);
}
