import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tahwishtak/core/network/api_constant/api_constant.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/login/login_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/register/register_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(ApiConstants.login)
  Future<AuthResponse> loginService(@Body() LoginRequest loginRequest);

  @POST(ApiConstants.signup)
  Future<AuthResponse> signUpService(@Body() RegisterRequest registerRequest);
}
