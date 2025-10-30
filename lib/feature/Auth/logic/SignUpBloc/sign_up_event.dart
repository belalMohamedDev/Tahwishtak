part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;

  const factory SignUpEvent.userSignUpEmailAddress(String value) =
      UserSignUpEmailAddressEvent;
  const factory SignUpEvent.userSignUpPassword(String value) =
      UserSignUpPasswordEvent;
  const factory SignUpEvent.userSignUpName(String value) =
      UserSignUNameEvent;

  const factory SignUpEvent.userShowSignUpPassword() =
      UserShowSignUpPasswordEvent;
  const factory SignUpEvent.userRegisterButton() = UserRegisterButtonEvent;
}
