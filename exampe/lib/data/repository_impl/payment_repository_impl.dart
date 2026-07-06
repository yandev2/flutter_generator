import 'package:dartz/dartz.dart';
import 'package:simzakat_baznas_lubuklinggau/data/source/payment_datasource.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../domain/entity/request/payment_request_entity.dart';
import '../../domain/entity/response/payment_response_entity.dart';
import '../../domain/repository/payment_repository.dart';
import '../model/request/payment_request_model.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDatasource _datasource;

  PaymentRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, PaymentResponseEntity>> payment(
    PaymentRequestEntity param, {
    bool asGuest = false,
  }) async {
    try {
      final modelParam = PaymentRequestModel.fromEntity(param);
      final response = await _datasource.payment(modelParam, asGuest: asGuest);
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
