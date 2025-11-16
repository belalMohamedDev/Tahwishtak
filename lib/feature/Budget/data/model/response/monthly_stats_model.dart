import 'package:json_annotation/json_annotation.dart';
part 'monthly_stats_model.g.dart';

@JsonSerializable()
class GetMonthlyStatsModel {
  bool? status;
  String? message;
  double? totalStartingBalance;
  double? totalCurrentBalance;
  double? totalSpentInMonth;

  List<GetMonthlyStatsData>? data;

  GetMonthlyStatsModel({
    this.status,
    this.message,
    this.totalSpentInMonth,
    this.totalCurrentBalance,
    this.totalStartingBalance,
    this.data,
  });

  //from json
  factory GetMonthlyStatsModel.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlyStatsModelFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetMonthlyStatsModelToJson(this);
}

@JsonSerializable()
class GetMonthlyStatsData {
  String? category;
  int? amount;
  double? percent;

  GetMonthlyStatsData({this.category, this.amount, this.percent});

  //from json
  factory GetMonthlyStatsData.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlyStatsDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$GetMonthlyStatsDataToJson(this);
}
