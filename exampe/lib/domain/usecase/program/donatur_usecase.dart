import '../../entity/donatur_entity.dart';
import '../../entity/paginated_list_entity.dart';
import '../../repository/program_repository.dart';

class DonaturUsecase {
  final ProgramRepository repository;

  DonaturUsecase(this.repository);

  Future<PaginatedListEntity<DonaturEntity>> call(int programId, {int page = 1}) async {
    final result = await repository.donatur(programId, page: page);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
