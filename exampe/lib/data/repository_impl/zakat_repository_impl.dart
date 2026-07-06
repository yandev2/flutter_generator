import 'package:dartz/dartz.dart';
import 'package:simzakat_baznas_lubuklinggau/core/error/failures.dart';
import 'package:simzakat_baznas_lubuklinggau/data/source/zakat_datasource.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/request/zakat_calculate_request_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/inventory_item_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/nisab_rate_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/zakat_calculate_response_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/entity/response/zakat_type_entity.dart';
import 'package:simzakat_baznas_lubuklinggau/domain/repository/zakat_repository.dart';

import '../../core/error/exceptions.dart';
import '../model/request/zakat_calculate_request_model.dart';

class ZakatRepositoryImpl extends ZakatRepository {
  final ZakatDatasource _datasource;
  ZakatRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, ZakatCalculateResponseEntity>> calculateZakat(
    ZakatCalculateRequestEntity request,
  ) async {
    try {
      final model = await _datasource.calculateZakat(
        ZakatCalculateRequestModel.fromEntity(request),
      );
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<InventoryItemEntity>>> getInventoryItems() async {
    try {
      final response = await _datasource.getInventoryItems();
      return Right(response.map((e) => e.toEntity()).toList());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NisabRateEntity>>> getNisabRates() async {
    try {
      final response = await _datasource.getNisabRates();
      return Right(response.map((e) => e.toEntity()).toList());
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ZakatTypeEntity>>> getZakatType() async {
    try {
      final models = await _datasource.getZakatType();
      return Right(models.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }
}
