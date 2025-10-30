import 'package:json_annotation/json_annotation.dart';
part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  RegisterRequest({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;

  final String password;

  //from json
  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
