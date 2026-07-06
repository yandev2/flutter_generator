import '../../core/const/app_constants.dart';
import '../../core/network/api_client.dart';
import '../../domain/entity/request/auth_entity.dart';
import '../model/request/register_request_model.dart';
import '../model/response/register_response_model.dart';
import '../model/user_model.dart';

abstract class AuthDatasource {
  Future<UserModel> autoLogin(String token);
  Future<UserModel> login(AuthEntity data);
  Future<RegisterResponseModel> register(RegisterRequestModel data);
}

class AuthDatasourceImpl implements AuthDatasource {
  final ApiClient _client;
  final baseUrl = AppConstants.baseUrl;

  AuthDatasourceImpl(this._client);

  @override
  Future<UserModel> autoLogin(String token) async {
    _client.setToken(token);
    final response = await _client.get("/auto_login");
    return UserModel.fromJson(response['data']);
  }

  @override
  Future<UserModel> login(AuthEntity data) async {
    final response = await _client.post("/login", body: data.toJson());
    final user = UserModel.fromJson(response['data']);
    if (user.token != null) {
      _client.setToken(user.token!);
    }
    return user;
  }

  @override
  Future<RegisterResponseModel> register(RegisterRequestModel data) async {
    final response = await _client.post("/register", body: data.toJson());
    return RegisterResponseModel.fromJson(response['data']);
  }
}
