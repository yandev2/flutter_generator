import 'package:dartz/dartz.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/muzzaki_transaction_history_entity.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../domain/entity/paginated_list_entity.dart';
import '../../domain/entity/response/muzakki_contribution_summary_entity.dart';
import '../../domain/entity/response/muzakki_dashboard_response_entity.dart';
import '../../domain/entity/response/muzzaki_transaction_item_list_entity.dart';
import '../../domain/entity/response/user_data_entity.dart';
import '../../domain/repository/muzzaki_repository.dart';
import '../source/muzzaki_datasource.dart';

class MuzzakiRepositoryImpl implements MuzzakiRepository {
  final MuzzakiDatasource _datasource;

  MuzzakiRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, MuzakkiContributionSummaryEntity>> getContributionSummary() async {
    try {
      final response = await _datasource.getContributionSummary();
      return Right(response.toEntity());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MuzakkiDashboardResponseEntity>> getDashboard() async {
    try {
      final response = await _datasource.getDashboard();
      return Right(response.toEntity());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserDataEntity>> getProfile() async {
    try {
      final response = await _datasource.getProfile();
      return Right(response.toEntity());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedListEntity<MuzzakiTransactionItemListEntity>>>
  getHistoryTransaction({String? status, int page = 1}) async {
    try {
      final response = await _datasource.getTransaction(status: status, page: page);
      return Right(
        PaginatedListEntity(
          items: response.items.map((e) => e.toEntity()).toList(),
          pagination: response.pagination.toEntity(),
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MuzzakiTransactionHistoryEntity>> detailTransaction(
    int transactionId,
  ) async {
    try {
      final response = await _datasource.detailTransaction(transactionId);
      return Right(response.toEntity());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }
}
