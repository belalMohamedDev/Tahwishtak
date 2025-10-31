import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/common/toast/show_toast.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/app_login.dart';
import 'package:tahwishtak/core/utils/extensions.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Auth/logic/SignUpBloc/sign_up_bloc.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/dont_have_account.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/google_and_face_auth_widget.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/or_widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (apiErrorModel) => ShowToast.showToastErrorTop(
            errorMessage: apiErrorModel.message!,
            context: context,
          ),

          suceess: (authResponse) {
            ShowToast.showToastSuccessTop(
              message: authResponse.message!,
              context: context,
            );

            AppLogin().storeAuthData(authResponse);

            context.pushReplacementNamed(Routes.homRoute);
          },
        );
      },
      builder: (context, state) {
        return Container(
          padding: responsive.setPadding(top: 30),
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
              padding: responsive.setPadding(top: 7, left: 4, right: 4),
              child: Form(
                key: context.read<SignUpBloc>().signUpFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        context.read<SignUpBloc>().add(
                          UserSignUNameEvent(value),
                        );
                      },
                      controller: context.read<SignUpBloc>().userSignUpName,
                      textAlign: TextAlign.right,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,

                      autofillHints: const [AutofillHints.name],

                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          IconlyBold.profile,
                          size: responsive.setIconSize(5.5),
                        ),
                        errorText: state.whenOrNull(
                          userSignUpName: (value) {
                            return value.isNotEmpty ? value : null;
                          },
                        ),
                        hintText: "اسمك",
                      ),
                    ),
                    SizedBox(height: responsive.setHeight(2)),
                    TextFormField(
                      onChanged: (value) {
                        context.read<SignUpBloc>().add(
                          UserSignUpEmailAddressEvent(value),
                        );
                      },
                      controller: context
                          .read<SignUpBloc>()
                          .userSignUpEmailAddress,
                      textAlign: TextAlign.right,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,

                      autofillHints: const [AutofillHints.email],

                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          IconlyBold.message,
                          size: responsive.setIconSize(5.5),
                        ),
                        errorText: state.whenOrNull(
                          userSignUpEmailAddress: (value) {
                            return value.isNotEmpty ? value : null;
                          },
                        ),
                        hintText: "بريد الالكترونى",
                      ),
                    ),
                    SizedBox(height: responsive.setHeight(2)),
                    TextFormField(
                      onChanged: (value) {
                        context.read<SignUpBloc>().add(
                          UserSignUpPasswordEvent(value),
                        );
                      },
                      controller: context.read<SignUpBloc>().userSignUpPassword,

                      textAlign: TextAlign.right,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,

                      autofillHints: const [AutofillHints.password],
                      obscureText: context.read<SignUpBloc>().showPass,
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {
                            context.read<SignUpBloc>().add(
                              const UserShowSignUpPasswordEvent(),
                            );
                          },
                          icon: context.read<SignUpBloc>().showPass
                              ? Icon(
                                  IconlyBroken.show,
                                  size: responsive.setIconSize(6.5),
                                )
                              : Icon(
                                  IconlyBroken.hide,
                                  size: responsive.setIconSize(6.5),
                                ),
                        ),
                        hintText: "ادخل كلمة السر",
                        errorText: state.whenOrNull(
                          userSignUpPassword: (value) {
                            return value.isNotEmpty ? value : null;
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: responsive.setHeight(2)),
                    ElevatedButton(
                      onPressed: context.read<SignUpBloc>().isButtonInVaildator
                          ? () {
                              context.read<SignUpBloc>().add(
                                const UserRegisterButtonEvent(),
                              );
                            }
                          : null,
                      child: state is SignUpButtonLoadingData
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
                                  "تسجيل",
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
                    DontHaveAccount(),
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
