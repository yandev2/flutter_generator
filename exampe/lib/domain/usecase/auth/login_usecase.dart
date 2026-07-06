import '../../entity/request/auth_entity.dart';
import '../../entity/response/user_entity.dart';
import '../../repository/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  Future<UserEntity> call(AuthEntity data) async {
    final result = await repository.login(data);

    return result.fold((failure) => throw Exception(failure.message), (user) => user);
  }
}
