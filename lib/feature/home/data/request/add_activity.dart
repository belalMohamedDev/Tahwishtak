import 'package:json_annotation/json_annotation.dart';
part 'add_activity.g.dart';

@JsonSerializable()
class AddActivityRequest {
  AddActivityRequest({
    required this.type,
    required this.price,
  });

  final String type;

  final double price;


  //from json
  factory AddActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$AddActivityRequestFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$AddActivityRequestToJson(this);
}
