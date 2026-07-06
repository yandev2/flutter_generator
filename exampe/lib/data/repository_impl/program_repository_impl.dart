import 'package:dartz/dartz.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../domain/entity/donatur_entity.dart';
import '../../domain/entity/paginated_list_entity.dart';
import '../../domain/entity/response/program_entity.dart';
import '../../domain/entity/response/programs_item_list_entity.dart';
import '../../domain/repository/program_repository.dart';
import '../source/program_datasource.dart';

class ProgramRepositoryImpl implements ProgramRepository {
  final ProgramDatasource datasource;

  ProgramRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, PaginatedListEntity<ProgramsItemListEntity>>> getProgram({
    String? search,
    bool? isActive,
    int page = 1,
  }) async {
    try {
      final response = await datasource.getProgram(search: search, isActive: isActive, page: page);
      return Right(
        PaginatedListEntity(
          items: response.items.map((e) => e.toEntity()).toList(),
          pagination: response.pagination.toEntity(),
        ),
      );
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProgramEntity>> detailProgram(int programId) async {
    try {
      final model = await datasource.detailProgram(programId);
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedListEntity<DonaturEntity>>> donatur(
    int programId, {
    int page = 1,
  }) async {
    try {
      final response = await datasource.donatur(programId, page: page);
      return Right(
        PaginatedListEntity(
          items: response.items.map((e) => e.toEntity()).toList(),
          pagination: response.pagination.toEntity(),
        ),
      );
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unexpected(message: e.toString()));
    }
  }
}
