import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';

import 'package:tahwishtak/feature/bottomNavBar/data/model/today_activities_model.dart';

abstract class HomeRepository {
  Future<ApiResult<GetTodayActivitiesModel>> getTodayActivitiesRepo();
}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;

  @override
  Future<ApiResult<GetTodayActivitiesModel>> getTodayActivitiesRepo() async {
    try {
      final response = await _apiService.getTodayActivitiesService();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
