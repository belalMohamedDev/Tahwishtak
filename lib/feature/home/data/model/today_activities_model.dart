import 'package:json_annotation/json_annotation.dart';
part 'today_activities_model.g.dart';

@JsonSerializable()
class TodayActivitiesModel {
  bool? status;
  String? message;
  TodayActivitiesData? data;

  TodayActivitiesModel({this.status, this.message, this.data});

  //from json
  factory TodayActivitiesModel.fromJson(Map<String, dynamic> json) =>
      _$TodayActivitiesModelFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$TodayActivitiesModelToJson(this);
}

@JsonSerializable()
class TodayActivitiesData {
  double? currentBalance;
  double? totalSpent;
  double? startingBalance;
  String? date;

  List<TodayActivities>? activities;

  TodayActivitiesData({this.currentBalance, this.totalSpent, this.activities});

  //from json
  factory TodayActivitiesData.fromJson(Map<String, dynamic> json) =>
      _$TodayActivitiesDataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$TodayActivitiesDataToJson(this);
}

@JsonSerializable()
class TodayActivities {
  String? sId;
  String? user;
  String? dailyActivity;
  String? type;
  double? price;
  String? time;
  String? createdAt;

  TodayActivities({
    this.sId,
    this.user,
    this.dailyActivity,
    this.type,
    this.price,
    this.time,
    this.createdAt,
  });

  //from json
  factory TodayActivities.fromJson(Map<String, dynamic> json) =>
      _$TodayActivitiesFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$TodayActivitiesToJson(this);
}
