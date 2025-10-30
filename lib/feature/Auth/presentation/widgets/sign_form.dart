import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/dont_have_account.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/google_and_face_auth_widget.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/or_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Padding(
      padding: responsive.setPadding(top: 37),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManger.bGColor,
          borderRadius: BorderRadius.circular(responsive.setBorderRadius(12)),
        ),
        child: Padding(
          padding: responsive.setPadding(top: 8, left: 4, right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
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
                ),
              ),
              SizedBox(height: responsive.setHeight(2)),
              TextFormField(
                textAlign: TextAlign.right,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,

                autofillHints: const [AutofillHints.email],

                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBold.hide, // Email icon
                    size: responsive.setIconSize(5.5),
                  ),
                  hintText: "ادخل كلمة السر",
                ),
              ),
              SizedBox(height: responsive.setHeight(1)),

              TextButton(
                onPressed: () {},
                child: Text(
                  "نسيت كلمه السر؟",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: responsive.setTextSize(3.8),
                  ),
                ),
              ),
              SizedBox(height: responsive.setHeight(1)),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(IconlyBold.login, size: responsive.setIconSize(6)),
                    SizedBox(width: responsive.setWidth(3)),

                    Text(
                      "تسجيل الدخول",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
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
    );
  }
}
