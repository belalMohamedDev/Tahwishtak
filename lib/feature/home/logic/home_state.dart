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

  const factory HomeState.addActivityLoading() = AddActivityLoading;
  const factory HomeState.addActivityError(ApiErrorModel apiErrorModel) =
      AddActivityError;

  const factory HomeState.addActivitySuccess(TodayActivitiesData data) =
      AddActivitySuccess;

  const factory HomeState.startDayLoading() = StartDayLoading;
  const factory HomeState.startDayError(ApiErrorModel apiErrorModel) =
      StartDayError;

  const factory HomeState.startDaySuccess(TodayActivitiesData data) =
      StartDaySuccess;

  const factory HomeState.deleteActivityLoading() = DeleteActivityLoading;
  const factory HomeState.deleteActivityError(ApiErrorModel apiErrorModel) =
      DeleteActivityError;

  const factory HomeState.deleteActivitySuccess(TodayActivitiesData data) =
      DeleteActivitySuccess;
}
