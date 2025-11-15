import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tahwishtak/core/network/api_constant/api_constant.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/login/login_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/register/register_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';
import 'package:tahwishtak/feature/Budget/data/model/response/monthly_stats_model.dart';
import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/data/request/add_activity.dart';
import 'package:tahwishtak/feature/home/data/request/start_new_day.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(ApiConstants.login)
  Future<AuthResponse> loginService(@Body() LoginRequest loginRequest);

  @POST(ApiConstants.signup)
  Future<AuthResponse> signUpService(@Body() RegisterRequest registerRequest);

  @GET(ApiConstants.dailyActivity)
  Future<TodayActivitiesModel> getTodayActivitiesService();

  @POST(ApiConstants.dailyActivity)
  Future<TodayActivitiesModel> addActivityService(
    @Body() AddActivityRequest addActivityRequest,
  );

  @POST("${ApiConstants.dailyActivity}/newDays")
  Future<TodayActivitiesModel> startNewDayService(
    @Body() StartNewDayRequest startNewDayRequest,
  );

  @GET("${ApiConstants.dailyActivity}/monthlyStats")
  Future<GetMonthlyStatsModel> getMonthlyStatsService(
    @Queries() Map<String, dynamic> query,
  );
}
