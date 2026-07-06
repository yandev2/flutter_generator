import '../../entity/request/register_request_entity.dart';
import '../../entity/response/register_response_entity.dart';
import '../../repository/auth_repository.dart';

class RegisterUsecase {
  final AuthRepository repository;

  RegisterUsecase(this.repository);

  Future<RegisterResponseEntity> call(RegisterRequestEntity data) async {
    final result = await repository.register(data);

    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
