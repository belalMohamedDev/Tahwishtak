import 'package:json_annotation/json_annotation.dart';
part 'start_new_day.g.dart';

@JsonSerializable()
class StartNewDayRequest {
  StartNewDayRequest({required this.startingBalance});

  final double startingBalance;

  //from json
  factory StartNewDayRequest.fromJson(Map<String, dynamic> json) =>
      _$StartNewDayRequestFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$StartNewDayRequestToJson(this);
}
