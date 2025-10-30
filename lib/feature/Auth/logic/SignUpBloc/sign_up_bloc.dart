import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/failure/api_error_model.dart';
import 'package:tahwishtak/core/utils/app_regex.dart';
import 'package:tahwishtak/feature/Auth/data/model/repository/auth_repo.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/register/register_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController userSignUpEmailAddress = TextEditingController();
  final TextEditingController userSignUpPassword = TextEditingController();
  final TextEditingController userSignUpName = TextEditingController();
  final AuthenticationRepositoryImplement _registerRepository;

  // UI-related flags
  bool showPass = true;

  bool isButtonInVaildator = false;

  final signUpFormKey = GlobalKey<FormState>();

  SignUpBloc(this._registerRepository) : super(_Initial()) {
    on<UserRegisterButtonEvent>(registerButton);

    // General event handler
    on<SignUpEvent>((event, emit) {
      if (event is UserSignUNameEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isNameValid(event.value)) {
          emit(SignUpState.userSignUpName("يرجى إدخال الاسم صحيح"));
        } else {
          emit(const SignUpState.userSignUpName(""));
        }
      }

      if (event is UserSignUpEmailAddressEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isEmailValid(event.value)) {
          emit(
            SignUpState.userSignUpEmailAddress("يرجى إدخال بريد إلكتروني صحيح"),
          );
        } else {
          emit(const SignUpState.userSignUpEmailAddress(""));
        }
      }

      if (event is UserSignUpPasswordEvent) {
        registerButtonValidator(event, emit);
        if (!AppRegex.isPasswordValid(event.value)) {
          emit(SignUpState.userSignUpPassword("يرجى إدخال كلمة مرور صحيحة"));
        } else {
          emit(const SignUpState.userSignUpPassword(""));
        }
      }

      if (event is UserShowSignUpPasswordEvent) {
        // Toggle password visibility
        showPass = !showPass;
        emit(SignUpState.showUserSignUpPassword(showPass));
      }
    });
  }

  ////////////////////////////////////////
  // Register Button Validation
  ////////////////////////////////////////

  /// Validates if the sign-up button should be enabled based on the input fields.
  Future<void> registerButtonValidator(
    SignUpEvent event,
    Emitter<SignUpState> emit,
  ) async {
    // Checks if all input fields have valid values
    if (!AppRegex.isNameValid(userSignUpName.text) ||
        !AppRegex.isEmailValid(userSignUpEmailAddress.text) ||
        !AppRegex.isPasswordValid(userSignUpPassword.text)) {
      // Disable the button if validation fails
      isButtonInVaildator = false;
    } else {
      // Enable the button if all fields are valid
      isButtonInVaildator = true;
    }
    // Emit the button validation state
    emit(SignUpState.buttonSignUpVaildation(isButtonInVaildator));
  }

  ////////////////////////////////////////
  // Register Button Logic
  ////////////////////////////////////////

  /// Handles the registration process when the user clicks the sign-up button.
  Future<void> registerButton(
    SignUpEvent event,
    Emitter<SignUpState> emit,
  ) async {
    await event.whenOrNull(
      userRegisterButton: () async {
        // Emit loading state
        emit(const SignUpState.loading());

        // Call the repository to handle user registration
        final response = await _registerRepository.registerRepo(
          RegisterRequest(
            name: userSignUpName.text.trim(),
            email: userSignUpEmailAddress.text.trim(),
            password: userSignUpPassword.text.trim(),
          ),
        );

        // Handle the response from the registration API
        response.when(
          success: (registerResponse) async {
            // Emit success state
            emit(SignUpState.suceess(registerResponse));
          },
          failure: (error) {
            // Emit error state in case of failure
            emit(SignUpState.error(error));
          },
        );
      },
    );
  }
}
