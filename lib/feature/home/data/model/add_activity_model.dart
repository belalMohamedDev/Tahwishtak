import 'package:json_annotation/json_annotation.dart';
part 'add_activity_model.g.dart';

@JsonSerializable()
class AddActivityModel {
  bool? status;
  String? message;
  AddActivityData? data;

  AddActivityModel({this.status, this.message, this.data});

  factory AddActivityModel.fromJson(Map<String, dynamic> json) =>
      _$AddActivityModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddActivityModelToJson(this);
}

@JsonSerializable()
class AddActivityData {
  String? user;
  String? dailyActivity;
  String? type;
  double? price;
  String? sId;
  String? time;
  String? createdAt;
  String? updatedAt;

  AddActivityData({
    this.user,
    this.dailyActivity,
    this.type,
    this.price,
    this.sId,
    this.time,
    this.createdAt,
    this.updatedAt,
  });

  factory AddActivityData.fromJson(Map<String, dynamic> json) =>
      _$AddActivityDataFromJson(json);
  Map<String, dynamic> toJson() => _$AddActivityDataToJson(this);
}
