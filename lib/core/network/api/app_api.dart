

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tahwishtak/core/network/api_constant/api_constant.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/login/login_body_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';



part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(ApiConstants.login)
  Future<AuthResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );


}
