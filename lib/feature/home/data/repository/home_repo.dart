import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';
import 'package:tahwishtak/feature/home/data/localDataSource/category_local_data_source.dart';

import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';

abstract class HomeRepository {
  Future<ApiResult<TodayActivitiesModel>> getTodayActivitiesRepo();
}

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;

  @override
  Future<ApiResult<TodayActivitiesModel>> getTodayActivitiesRepo() async {
    final todayKey = DateTime.now().toString().substring(0, 10);

    try {
      final cachedData =
          await TodayActivitiesLocalDataSource.getCachedTodayActivities(
            todayKey,
          );

      if (cachedData != null) {
        final model = TodayActivitiesModel(
          status: true,
          message: 'بيانات مخزنة محليًا',
          data: cachedData.data,
        );
        _refreshFromServer(todayKey);

        return ApiResult.success(model);
      }

      final response = await _apiService.getTodayActivitiesService();

      await TodayActivitiesLocalDataSource.cacheTodayActivities(
        response,
        todayKey,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<void> _refreshFromServer(String date) async {
    try {
      final response = await _apiService.getTodayActivitiesService();
      await TodayActivitiesLocalDataSource.cacheTodayActivities(response, date);
    } catch (_) {}
  }
}
