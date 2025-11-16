import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';
import 'package:tahwishtak/core/utils/query_utils.dart';
import 'package:tahwishtak/feature/Budget/data/localDataSource/monthly_budget_local_data_source.dart';

import 'package:tahwishtak/feature/Budget/data/model/requestBody/monthly_stats_request.dart';
import 'package:tahwishtak/feature/Budget/data/model/response/monthly_stats_model.dart';

abstract class MonthlyStatsRepository {
  Future<ApiResult<GetMonthlyStatsModel>> getMonthlyStatsRepo(
    MonthlyStatsRequest monthlyStatsRequest,
  );
}

class MonthlyStatsRepositoryImplement implements MonthlyStatsRepository {
  MonthlyStatsRepositoryImplement(this._apiService);
  final AppServiceClient _apiService;

  @override
  Future<ApiResult<GetMonthlyStatsModel>> getMonthlyStatsRepo(
    MonthlyStatsRequest monthlyStatsRequest,
  ) async {
    final todayKey = DateTime.now().toString().substring(0, 10);

    try {
      final cachedData =
          await MonthlyBudgetLocalDataSource.getCachedMonthlyBudget(todayKey);

      final query = cleanQuery({
        "year": monthlyStatsRequest.year,
        "month": monthlyStatsRequest.month,
      });

      if (cachedData != null) {
        final model = GetMonthlyStatsModel(
          status: true,
          message: 'بيانات مخزنة محليًا',
          totalSpentInMonth: cachedData.totalSpentInMonth,
          data: cachedData.data,
        );
        _refreshFromServer(todayKey, query);

        return ApiResult.success(model);
      }

      final response = await _apiService.getMonthlyStatsService(query);

      await MonthlyBudgetLocalDataSource.cacheMonthlyBudget(response, todayKey);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<void> _refreshFromServer(
    String date,
    Map<String, dynamic> query,
  ) async {
    try {
      final response = await _apiService.getMonthlyStatsService(query);

      await MonthlyBudgetLocalDataSource.clearOldCaches();

      await MonthlyBudgetLocalDataSource.cacheMonthlyBudget(response, date);
    } catch (_) {}
  }
}
