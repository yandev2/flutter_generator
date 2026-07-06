import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entity/request/auth_entity.dart';
import '../entity/request/register_request_entity.dart';
import '../entity/response/register_response_entity.dart';
import '../entity/response/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> autoLogin(String token);
  Future<Either<Failure, UserEntity>> login(AuthEntity data);
  Future<Either<Failure, RegisterResponseEntity>> register(RegisterRequestEntity data);
}
