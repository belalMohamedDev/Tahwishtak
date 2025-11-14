import 'package:json_annotation/json_annotation.dart';
part 'monthly_stats_request.g.dart';

@JsonSerializable()
class MonthlyStatsRequest {
  MonthlyStatsRequest({required this.year, required this.month});

  final int? year;
  final int? month;

  //from json
  factory MonthlyStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$MonthlyStatsRequestFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$MonthlyStatsRequestToJson(this);
}
