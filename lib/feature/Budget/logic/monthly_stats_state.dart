part of 'monthly_stats_cubit.dart';

@freezed
class MonthlyStatsState with _$MonthlyStatsState {
  const factory MonthlyStatsState.initial() = _Initial;

  
  const factory MonthlyStatsState.getMonthlyStatsLoading() =
      GetMonthlyStatsLoading;
  const factory MonthlyStatsState.getMonthlyStatsError(ApiErrorModel apiErrorModel) =
      GetMonthlyStatsError;

  const factory MonthlyStatsState.getMonthlyStatsSuccess(GetMonthlyStatsModel getMonthlyStatsModel) =
      GetMonthlyStatsSuccess;
}
