
import '../../entity/response/programs_item_list_entity.dart';
import '../../entity/paginated_list_entity.dart';
import '../../repository/program_repository.dart';

class GetProgramUsecase {
  final ProgramRepository repository;

  GetProgramUsecase(this.repository);

  Future<PaginatedListEntity<ProgramsItemListEntity>> call({
    String? search,
    bool? isActive,
    int page = 1,
  }) async {
    final result = await repository.getProgram(
      search: search,
      isActive: isActive,
      page: page,
    );
    return result.fold((failure) => throw Exception(failure.message), (data) => data);
  }
}
