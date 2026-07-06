import '../../entity/response/user_entity.dart';
import '../../repository/auth_repository.dart';

class AutoLoginUsecase {
  final AuthRepository repository;

  AutoLoginUsecase(this.repository);
  Future<UserEntity> call(String token) async {
    final result = await repository.autoLogin(token);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
