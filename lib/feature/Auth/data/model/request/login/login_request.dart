import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  LoginRequest({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;


  //from json
  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
