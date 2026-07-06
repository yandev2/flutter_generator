

import 'package:dartz/dartz.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../domain/entity/request/auth_entity.dart';
import '../../domain/entity/request/register_request_entity.dart';
import '../../domain/entity/response/register_response_entity.dart';
import '../../domain/entity/response/user_entity.dart';
import '../../domain/repository/auth_repository.dart';
import '../model/request/register_request_model.dart';
import '../source/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _datasource;

  AuthRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, UserEntity>> autoLogin(String token) async {
    try {
      final result = await _datasource.autoLogin(token);
      return Right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on RequestTimeoutException catch (e) {
      return Left(Failure.timeout(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login(AuthEntity data) async {
    try {
      final result = await _datasource.login(data);
      return Right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on RequestTimeoutException catch (e) {
      return Left(Failure.timeout(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, RegisterResponseEntity>> register(
    RegisterRequestEntity data,
  ) async {
    try {
      final result = await _datasource.register(
        RegisterRequestModel.fromEntity(data),
      );
      return Right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on RequestTimeoutException catch (e) {
      return Left(Failure.timeout(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }
}
