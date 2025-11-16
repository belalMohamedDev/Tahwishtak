import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';
import 'package:tahwishtak/feature/home/data/localDataSource/today_activites_local_data_source.dart';

import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/data/request/add_activity.dart';
import 'package:tahwishtak/feature/home/data/request/start_new_day.dart';
import 'package:tahwishtak/feature/home/logic/activity_events.dart';

abstract class HomeRepository {
  Future<ApiResult<TodayActivitiesModel>> getTodayActivitiesRepo();
  Future<ApiResult<TodayActivitiesModel>> addActivityRepo(
    AddActivityRequest activityRequest,
  );
  Future<ApiResult<TodayActivitiesModel>> startNewDayRepo(
    StartNewDayRequest startNewDayRequest,
  );
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

      await TodayActivitiesLocalDataSource.clearOldCaches();

      await TodayActivitiesLocalDataSource.cacheTodayActivities(response, date);
    } catch (_) {}
  }

  @override
  Future<ApiResult<TodayActivitiesModel>> addActivityRepo(
    AddActivityRequest activityRequest,
  ) async {
    try {
      final response = await _apiService.addActivityService(activityRequest);

      final todayKey = DateTime.now().toString().substring(0, 10);

      await TodayActivitiesLocalDataSource.clearOldCaches();

      await TodayActivitiesLocalDataSource.cacheTodayActivities(
        response,
        todayKey,
      );

      ActivityEvents().dispatch("today_updated");

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<TodayActivitiesModel>> startNewDayRepo(
    StartNewDayRequest startNewDayRequest,
  ) async {
    try {
      final response = await _apiService.startNewDayService(startNewDayRequest);

      final todayKey = DateTime.now().toString().substring(0, 10);

      await TodayActivitiesLocalDataSource.clearOldCaches();

      await TodayActivitiesLocalDataSource.cacheTodayActivities(
        response,
        todayKey,
      );

      ActivityEvents().dispatch("today_updated");

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
