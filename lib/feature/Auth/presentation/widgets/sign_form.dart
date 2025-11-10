import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/common/toast/show_toast.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/app_login.dart';
import 'package:tahwishtak/core/utils/extensions.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Auth/logic/loginBloc/login_bloc.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/dont_have_account.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/google_and_face_auth_widget.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/or_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (apiErrorModel) {
            ShowToast.showToastErrorTop(
              errorMessage: apiErrorModel.message!,
              context: context,
            );
          },
          suceess: (authResponse) {
            ShowToast.showToastSuccessTop(
              message: authResponse.message!,
              context: context,
            );
            AppLogin().storeAuthData(authResponse);

            context.pushReplacementNamed(Routes.bottomNavBarRoute);
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: responsive.setPadding(top: 32),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManger.bGColor,
              borderRadius: BorderRadius.circular(
                responsive.setBorderRadius(12),
              ),
            ),
            child: Padding(
              padding: responsive.setPadding(top: 8, left: 4, right: 4),
              child: Form(
                key: context.read<LoginBloc>().loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      onChanged: (value) => context.read<LoginBloc>().add(
                        UserLoginEmailAddress(value),
                      ),
                      controller: context
                          .read<LoginBloc>()
                          .userLoginEmailAddress,
                      textAlign: TextAlign.right,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,

                      autofillHints: const [AutofillHints.email],

                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          IconlyBold.message, // Email icon
                          size: responsive.setIconSize(5.5),
                        ),
                        hintText: "بريد الالكترونى",
                        errorText: state.whenOrNull(
                          userLoginEmailAddress: (value) {
                            return value.isNotEmpty ? value : null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: responsive.setHeight(2)),
                    TextFormField(
                      onChanged: (value) {
                        context.read<LoginBloc>().add(UserLoginPassword(value));
                      },
                      controller: context.read<LoginBloc>().userLoginPassword,
                      obscureText: context.read<LoginBloc>().showPass,
                      textAlign: TextAlign.right,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,

                      autofillHints: const [AutofillHints.password],

                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {
                            // Toggle the password visibility in the bloc
                            context.read<LoginBloc>().add(
                              const UserShowLoginPassword(),
                            );
                          },
                          icon: context.read<LoginBloc>().showPass
                              ? Icon(
                                  IconlyBroken.show, // Show password icon
                                  size: responsive.setIconSize(
                                    6.5,
                                  ), // Set icon size dynamically
                                )
                              : Icon(
                                  IconlyBroken.hide, // Hide password icon
                                  size: responsive.setIconSize(
                                    6.5,
                                  ), // Set icon size dynamically
                                ),
                        ),
                        errorText: state.whenOrNull(
                          userLoginPassword: (value) {
                            return value.isNotEmpty
                                ? value
                                : null; // If error exists, display it
                          },
                        ),
                        hintText: "ادخل كلمة السر",
                      ),
                    ),
                    SizedBox(height: responsive.setHeight(1)),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "نسيت كلمه السر؟",
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontSize: responsive.setTextSize(3.8)),
                      ),
                    ),
                    SizedBox(height: responsive.setHeight(1)),
                    ElevatedButton(
                      onPressed: context.read<LoginBloc>().isButtonInVaildator
                          ? () {
                              context.read<LoginBloc>().add(
                                const UserLoginButton(),
                              );
                            }
                          : null,
                      child: state is LoginButtonLoadingData
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: responsive.setHeight(2),
                                  width: responsive.setWidth(4),
                                  child: CircularProgressIndicator(
                                    color: ColorManger.whiteColor,
                                    strokeWidth: 2.0,
                                    strokeAlign: 0.01,
                                  ),
                                ),
                                SizedBox(width: responsive.setHeight(2)),
                                Text(
                                  "جارى التسجيل",
                                  style: Theme.of(context).textTheme.titleSmall
                                      ?.copyWith(
                                        fontSize: responsive.setTextSize(3.5),
                                      ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  IconlyBold.login,
                                  size: responsive.setIconSize(6),
                                ),
                                SizedBox(width: responsive.setWidth(3)),

                                Text(
                                  "تسجيل الدخول",
                                  style: Theme.of(context).textTheme.titleSmall!
                                      .copyWith(
                                        fontSize: responsive.setTextSize(3.8),
                                      ),
                                ),
                              ],
                            ),
                    ),
                    SizedBox(height: responsive.setHeight(3)),
                    OrWidget(),
                    SizedBox(height: responsive.setHeight(2)),

                    GoogleAndFaceAuthWidget(),
                    SizedBox(height: responsive.setHeight(1)),
                    DontHaveAccount(login: true),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
