import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/error_handler/api_error_handler.dart';
import 'package:tahwishtak/core/utils/query_utils.dart';

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
    try {
      final query = cleanQuery({
        "year": monthlyStatsRequest.year,
        "month": monthlyStatsRequest.month,
      });

      final response = await _apiService.getMonthlyStatsService(query);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
