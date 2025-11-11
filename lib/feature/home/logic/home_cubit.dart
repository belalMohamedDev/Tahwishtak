import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/failure/api_error_model.dart';
import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/data/repository/home_repo.dart';
import 'package:tahwishtak/feature/home/data/request/add_activity.dart';
import 'package:tahwishtak/feature/home/data/request/start_new_day.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepositoryImplement) : super(HomeState.initial());

  final HomeRepositoryImplement _homeRepositoryImplement;

  TodayActivitiesData? _getTodayActivities;
  TodayActivitiesData? get getTodayActivities => _getTodayActivities;

  Future<void> fetchGetTodayActivities() async {
    emit(const HomeState.getTodayActivitiesLoading());

    final response = await _homeRepositoryImplement.getTodayActivitiesRepo();

    response.when(
      success: (dataResponse) async {
        _getTodayActivities = dataResponse.data!;

        emit(HomeState.getTodayActivitiesSuccess(dataResponse.data!));
      },
      failure: (error) {
        emit(HomeState.getTodayActivitiesError(error));
      },
    );
  }

  Future<void> fetchAddActivity(String type, double price) async {
    emit(const HomeState.addActivityLoading());

    final response = await _homeRepositoryImplement.addActivityRepo(
      AddActivityRequest(type: type, price: price),
    );

    response.when(
      success: (dataResponse) async {
        _getTodayActivities = dataResponse.data!;

        emit(HomeState.addActivitySuccess(_getTodayActivities!));
      },
      failure: (error) {
        emit(HomeState.addActivityError(error));
      },
    );
  }

  Future<void> fetchStartDay(double startingBalance) async {
    emit(const HomeState.startDayLoading());

    final response = await _homeRepositoryImplement.startNewDayRepo(
      StartNewDayRequest(startingBalance: startingBalance),
    );

    response.when(
      success: (dataResponse) async {
        // _getTodayActivities = dataResponse.data!;

        emit(HomeState.startDaySuccess(dataResponse.data!));
      },
      failure: (error) {
        emit(HomeState.startDayError(error));
      },
    );
  }
}
