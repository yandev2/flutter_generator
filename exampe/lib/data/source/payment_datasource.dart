import 'package:get/get.dart';
import 'package:simzakat_baznas_lubuklinggau/service/auth/auth_service.dart';

import '../../core/network/api_client.dart';
import '../model/request/payment_request_model.dart';
import '../model/response/payment_response_model.dart';

abstract class PaymentDatasource {
  Future<PaymentResponseModel> payment(PaymentRequestModel param, {bool asGuest = false});
}

class PaymentDatasourceImpl extends PaymentDatasource {
  final ApiClient client;

  PaymentDatasourceImpl(this.client);

  void _injectToken() {
    final token = Get.find<AuthService>().user.value?.token;
    if (token != null) {
      client.setToken(token);
    }
  }

  @override
  Future<PaymentResponseModel> payment(PaymentRequestModel param, {bool asGuest = false}) async {
    Future<PaymentResponseModel> execute() async {
      if (!asGuest) {
        _injectToken();
      }

      final fields = param.toMultipartFields();
      final files = <String, String>{};
      if (param.proofFilePath != null && param.proofFilePath!.isNotEmpty) {
        files['proof'] = param.proofFilePath!;
      }

      final response = await client.uploadMultipleFiles("/payment", files: files, fields: fields);

      return PaymentResponseModel.fromJson(response['data']);
    }

    if (asGuest) {
      return client.runWithoutAuth(execute);
    }
    return execute();
  }
}
