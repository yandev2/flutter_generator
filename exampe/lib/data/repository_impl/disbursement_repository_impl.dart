import 'package:dartz/dartz.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../domain/entity/paginated_list_entity.dart';
import '../../domain/entity/response/disbursement_entity.dart';
import '../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../domain/repository/disbursement_repository.dart';
import '../source/disbursement_datasource.dart';

class DisbursementRepositoryImpl implements DisbursementRepository {
  final DisbursementDatasource datasource;

  DisbursementRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, PaginatedListEntity<DisbursementItemListEntity>>> getDisbursements({
    int? programId,
    int page = 1,
  }) async {
    try {
      final response = await datasource.getDisbursements(programId: programId, page: page);
      return Right(
        PaginatedListEntity(
          items: response.items.map((e) => e.toEntity()).toList(),
          pagination: response.pagination.toEntity(),
        ),
      );
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DisbursementEntity>> detailDisbursement(int disbursementId) async {
    try {
      final model = await datasource.detailDisbursement(disbursementId);
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }
}
