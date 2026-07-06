import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entity/donatur_entity.dart';
import '../entity/paginated_list_entity.dart';
import '../entity/response/program_entity.dart';
import '../entity/response/programs_item_list_entity.dart';

abstract class ProgramRepository {
  Future<Either<Failure, PaginatedListEntity<ProgramsItemListEntity>>> getProgram({
    String? search,
    bool? isActive,
    int page = 1,
  });
  Future<Either<Failure, ProgramEntity>> detailProgram(int programId);
  Future<Either<Failure, PaginatedListEntity<DonaturEntity>>> donatur(
    int programId, {
    int page = 1,
  });
}
