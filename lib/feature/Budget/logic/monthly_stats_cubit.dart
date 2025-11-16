import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/failure/api_error_model.dart';
import 'package:tahwishtak/feature/Budget/data/localDataSource/monthly_budget_local_data_source.dart';
import 'package:tahwishtak/feature/Budget/data/model/requestBody/monthly_stats_request.dart';
import 'package:tahwishtak/feature/Budget/data/model/response/monthly_stats_model.dart';
import 'package:tahwishtak/feature/Budget/data/repository/monthly_stats_repo.dart';
import 'package:tahwishtak/feature/Budget/presentation/widget/get_activity_color.dart';
import 'package:tahwishtak/feature/home/logic/activity_events.dart';

part 'monthly_stats_state.dart';
part 'monthly_stats_cubit.freezed.dart';

class MonthlyStatsCubit extends Cubit<MonthlyStatsState> {
  MonthlyStatsCubit(this._statsRepositoryImplement)
    : super(MonthlyStatsState.initial()) {
    ActivityEvents().stream.listen((event) async {
      if (event == "today_updated") {
        await MonthlyBudgetLocalDataSource.clearOldCaches();
        fetchGetMonthlyStats();
      }
    });
  }

  final MonthlyStatsRepositoryImplement _statsRepositoryImplement;

  GetMonthlyStatsModel? _getMonthlyStatsModel;
  GetMonthlyStatsModel? get getMonthlyStatsModel => _getMonthlyStatsModel;

  Future<void> fetchGetMonthlyStats({int? month, int? year}) async {
    emit(const MonthlyStatsState.getMonthlyStatsLoading());

    final response = await _statsRepositoryImplement.getMonthlyStatsRepo(
      MonthlyStatsRequest(month: month, year: year),
    );

    response.when(
      success: (dataResponse) async {
        _getMonthlyStatsModel = dataResponse;

        emit(MonthlyStatsState.getMonthlyStatsSuccess(dataResponse));
      },
      failure: (error) {
        emit(MonthlyStatsState.getMonthlyStatsError(error));
      },
    );
  }

  List<Map<String, dynamic>> convertToChartData(
    List<GetMonthlyStatsData> apiData,
  ) {
    return apiData.map((item) {
      return {
        "category": item.category,
        "amount": item.amount,
        "percent": item.percent,
        "color": getActivityColor(item.category),
      };
    }).toList();
  }
}
