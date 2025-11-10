import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/login/login_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/register/register_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';

abstract class AuthenticationRepository {
  Future<ApiResult<AuthResponse>> registerRepo(RegisterRequest registerRequest);

  Future<ApiResult<AuthResponse>> loginRepo(LoginRequest loginRequest);
}

class AuthenticationRepositoryImplement implements AuthenticationRepository {
  AuthenticationRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;

  @override
  Future<ApiResult<AuthResponse>> loginRepo(
    LoginRequest loginRequestBody,
  ) async {
    try {
      final response = await _apiService.loginService(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<AuthResponse>> registerRepo(
    RegisterRequest registerRequest,
  ) async {
    try {
      final response = await _apiService.signUpService(registerRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
