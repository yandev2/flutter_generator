import '../../core/network/api_client.dart';
import '../model/donatur_model.dart';
import '../model/paginated_response_model.dart';
import '../model/response/program_model.dart';
import '../model/response/programs_item_list_model.dart';

abstract class ProgramDatasource {
  Future<PaginatedResponseModel<ProgramsItemListModel>> getProgram({
    String? search,
    bool? isActive,
    int page = 1,
  });
  Future<ProgramModel> detailProgram(int programId);
  Future<PaginatedResponseModel<DonaturModel>> donatur(int programId, {int page = 1});
}

class ProgramDatasourceImpl implements ProgramDatasource {
  final ApiClient client;

  ProgramDatasourceImpl(this.client);

  @override
  Future<PaginatedResponseModel<ProgramsItemListModel>> getProgram({
    String? search,
    bool? isActive,
    int page = 1,
  }) async {
    final Map<String, dynamic> query = {'page': page};
    if (isActive != null) {
      query['isActive'] = isActive.toString();
    }
    if (search != null && search.isNotEmpty) {
      query['search'] = search;
    }
    final response = await client.get('/programs', query: query);
    return PaginatedResponseModel.fromJson(response, (e) => ProgramsItemListModel.fromJson(e));
  }

  @override
  Future<ProgramModel> detailProgram(int programId) async {
    final response = await client.get('/programs/$programId');
    return ProgramModel.fromJson(response['data'] as Map<String, dynamic>);
  }

  @override
  Future<PaginatedResponseModel<DonaturModel>> donatur(int programId, {int page = 1}) async {
    final response = await client.get('/programs/$programId/donators', query: {'page': page});
    return PaginatedResponseModel.fromJson(response, (e) => DonaturModel.fromJson(e));
  }
}
