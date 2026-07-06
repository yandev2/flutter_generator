import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/service/auth/auth_service.dart';

import '../../core/network/api_client.dart';
import '../model/request/zakat_calculate_request_model.dart';
import '../model/response/inventory_item_model.dart';
import '../model/response/nisab_rate_model.dart';
import '../model/response/zakat_calculate_response_model.dart';
import '../model/response/zakat_type_model.dart';

abstract class ZakatDatasource {
  Future<List<InventoryItemModel>> getInventoryItems();
  Future<List<NisabRateModel>> getNisabRates();
  Future<List<ZakatTypeModel>> getZakatType();
  Future<ZakatCalculateResponseModel> calculateZakat(ZakatCalculateRequestModel param);
}

class ZakatDatasourceImpl implements ZakatDatasource {
  final ApiClient client;

  ZakatDatasourceImpl(this.client);
  void _injectToken() {
    final token = Get.find<AuthService>().user.value?.token;
    if (token != null) {
      client.setToken(token);
    }
  }

  @override
  Future<ZakatCalculateResponseModel> calculateZakat(ZakatCalculateRequestModel param) async {
    final response = await client.post('/zakat/calculate', body: param.toJson());
    return ZakatCalculateResponseModel.fromJson(response['data'] as Map<String, dynamic>);
  }

  @override
  Future<List<InventoryItemModel>> getInventoryItems() async {
    _injectToken();
    final response = await client.get("/inventory/items");
    return (response['data'] as List)
        .map((e) => InventoryItemModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<NisabRateModel>> getNisabRates() async {
    _injectToken();
    final response = await client.get("/zakat/nisab");
    return (response['data'] as List)
        .map((e) => NisabRateModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ZakatTypeModel>> getZakatType() async {
    _injectToken();
    final response = await client.get('/zakat/types');
    return (response['data'] as List)
        .map((e) => ZakatTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
