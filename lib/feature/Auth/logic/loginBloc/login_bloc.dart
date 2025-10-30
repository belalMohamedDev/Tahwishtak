import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tahwishtak/core/network/apiResult/api_reuslt.dart';
import 'package:tahwishtak/core/network/failure/api_error_model.dart';
import 'package:tahwishtak/core/utils/app_regex.dart';
import 'package:tahwishtak/feature/Auth/data/model/repository/auth_repo.dart';
import 'package:tahwishtak/feature/Auth/data/model/request/login/login_request.dart';
import 'package:tahwishtak/feature/Auth/data/model/response/auth_response.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final TextEditingController userLoginEmailAddress = TextEditingController();
  final TextEditingController userLoginPassword = TextEditingController();

  final loginFormKey = GlobalKey<FormState>();

  final AuthenticationRepositoryImplement _loginRepository;

  bool showPass = true;
  bool isButtonInVaildator = false;

  LoginBloc(this._loginRepository) : super(const _Initial()) {
    on<UserLoginButton>(loginButton);

    on<LoginEvent>((event, emit) async {
      if (event is UserLoginEmailAddress) {
        await _validateLoginButton(event, emit);

        if (!AppRegex.isEmailValid(event.value)) {
          emit(
            LoginState.userLoginEmailAddress("يرجى إدخال بريد إلكتروني صحيح"),
          );
        } else {
          emit(const LoginState.userLoginEmailAddress(""));
        }
      }

      if (event is UserLoginPassword) {
        await _validateLoginButton(event, emit);

        if (!AppRegex.isPasswordValid(event.value)) {
          emit(LoginState.userLoginPassword("يرجى إدخال كلمة مرور صحيحة"));
        }
      }

      if (event is UserShowLoginPassword) {
        showPass = !showPass;
        emit(LoginState.showUserPassword(showPass));
      }
    });
  }

  /// Validates the login button's enabled state based on user input.
  Future<void> _validateLoginButton(
    LoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    // Check if email and password are valid
    if (!AppRegex.isPasswordValid(userLoginPassword.text) ||
        !AppRegex.isEmailValid(userLoginEmailAddress.text)) {
      isButtonInVaildator = false;
    } else {
      isButtonInVaildator = true;
    }

    // Emit the validation state
    emit(LoginState.buttonLoginVaildation(isButtonInVaildator));
  }

  /// Handles the login button press event.
  Future<void> loginButton(LoginEvent event, Emitter<LoginState> emit) async {
    await event.whenOrNull(
      userLoginButton: () async {
        emit(const LoginState.loading());

        // Attempt to log in the user
        final response = await _loginRepository.loginRepo(
          LoginRequest(
            email: userLoginEmailAddress.text.trim(),
            password: userLoginPassword.text.trim(),
          ),
        );

        // Handle the login response
        response.when(
          success: (loginResponse) async {
            emit(LoginState.suceess(loginResponse));
          },
          failure: (error) {
            // Emit error state with error details

            emit(LoginState.error(error));
          },
        );
      },
    );
  }
}
