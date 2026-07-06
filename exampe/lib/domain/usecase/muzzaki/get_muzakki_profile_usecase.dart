import '../../entity/response/user_data_entity.dart';
import '../../repository/muzzaki_repository.dart';

class GetMuzzakiProfileUsecase {
  final MuzzakiRepository repository;

  GetMuzzakiProfileUsecase(this.repository);

  Future<UserDataEntity> call() async {
    final result = await repository.getProfile();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
