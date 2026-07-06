import 'package:get/get.dart';

import '../../core/network/api_client.dart';
import '../../service/auth/auth_service.dart';
import '../model/paginated_response_model.dart';
import '../model/response/muzakki_contribution_summary_model.dart';
import '../model/response/muzakki_dashboard_response_model.dart';
import '../model/response/muzzaki_transaction_history_model.dart';
import '../model/response/muzzaki_transaction_item_list_model.dart';
import '../model/response/user_data_model.dart';

abstract class MuzzakiDatasource {
  Future<MuzakkiDashboardResponseModel> getDashboard();
  Future<UserDataModel> getProfile();
  Future<MuzakkiContributionSummaryModel> getContributionSummary();
  Future<PaginatedResponseModel<MuzzakiTransactionItemListModel>> getTransaction({
    String? status,
    int page = 1,
  });
  Future<MuzzakiTransactionHistoryModel> detailTransaction(int transactionId);
}

class MuzzakiDatasourceImpl extends MuzzakiDatasource {
  final ApiClient _client;

  MuzzakiDatasourceImpl(this._client);

  void _injectToken() {
    final token = Get.find<AuthService>().user.value?.token;
    if (token != null) {
      _client.setToken(token);
    }
  }

  @override
  Future<MuzzakiTransactionHistoryModel> detailTransaction(int transactionId) async {
    _injectToken();
    final response = await _client.get("/muzakki/history/$transactionId");
    return MuzzakiTransactionHistoryModel.fromJson(response['data']);
  }

  @override
  Future<MuzakkiContributionSummaryModel> getContributionSummary() async {
    _injectToken();
    final response = await _client.get("/muzakki/contribution-summary");
    return MuzakkiContributionSummaryModel.fromJson(response['data']);
  }

  @override
  Future<MuzakkiDashboardResponseModel> getDashboard() async {
    _injectToken();
    final response = await _client.get("/muzakki/dashboard");
    return MuzakkiDashboardResponseModel.fromJson(response['data']);
  }

  @override
  Future<UserDataModel> getProfile() async {
    _injectToken();
    final response = await _client.get("/muzakki/profile");
    return UserDataModel.fromJson(response['data']);
  }

  @override
  Future<PaginatedResponseModel<MuzzakiTransactionItemListModel>> getTransaction({
    String? status,
    int page = 1,
  }) async {
    _injectToken();
    final Map<String, dynamic> query = {'page': page};
    if (status != null && status.isNotEmpty) {
      query['status'] = status;
    }
    final response = await _client.get("/muzakki/history", query: query);
    return PaginatedResponseModel.fromJson(
      response,
      (e) => MuzzakiTransactionItemListModel.fromJson(e),
    );
  }
}
