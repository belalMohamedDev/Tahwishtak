import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/failure/api_error_model.dart';
import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/data/repository/home_repo.dart';

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
}
