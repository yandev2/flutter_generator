import '../../core/network/api_client.dart';
import '../model/paginated_response_model.dart';
import '../model/response/disbursement_item_list_model.dart';
import '../model/response/disbursement_model.dart';

abstract class DisbursementDatasource {
  Future<PaginatedResponseModel<DisbursementItemListModel>> getDisbursements({
    int? programId,
    String? disbursementType,
    int page = 1,
  });
  Future<DisbursementModel> detailDisbursement(int disbursementId);
}

class DisbursementDatasourceImpl implements DisbursementDatasource {
  final ApiClient client;

  DisbursementDatasourceImpl(this.client);

  @override
  Future<PaginatedResponseModel<DisbursementItemListModel>> getDisbursements({
    int? programId,
    String? disbursementType,
    int page = 1,
  }) async {
    final Map<String, dynamic> query = {'page': page};
    if (programId != null) {
      query['programId'] = programId;
    }
    if (disbursementType != null && disbursementType.isNotEmpty) {
      query['disbursementType'] = disbursementType;
    }

    final response = await client.get('/disbursements', query: query);
    return PaginatedResponseModel.fromJson(response, (e) => DisbursementItemListModel.fromJson(e));
  }

  @override
  Future<DisbursementModel> detailDisbursement(int disbursementId) async {
    final response = await client.get('/disbursements/$disbursementId');
    return DisbursementModel.fromJson(response['data'] as Map<String, dynamic>);
  }
}
