import '../../entity/response/program_entity.dart';
import '../../repository/program_repository.dart';

class DetailProgramUsecase {
  final ProgramRepository repository;

  DetailProgramUsecase(this.repository);

  Future<ProgramEntity> call(int programId) async {
    final result = await repository.detailProgram(programId);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => data,
    );
  }
}
