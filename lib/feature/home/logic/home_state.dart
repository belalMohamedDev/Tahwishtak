part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getTodayActivitiesLoading() =
      GetTodayActivitiesLoading;
  const factory HomeState.getTodayActivitiesError(ApiErrorModel apiErrorModel) =
      GetTodayActivitiesError;

  const factory HomeState.getTodayActivitiesSuccess(TodayActivitiesData data) =
      GetTodayActivitiesSuccess;
}
