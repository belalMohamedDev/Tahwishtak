import 'package:flutter/material.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/core/utils/extensions.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key, this.login = false});

  final bool login;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (login == true) {
              context.pushReplacementNamed(Routes.signUpRoute);
            } else {
              context.pushReplacementNamed(Routes.loginRoute);
            }
          },
          child: Text(
            "سجل هنا",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: responsive.setTextSize(3.8),
            ),
          ),
        ),
        SizedBox(width: responsive.setWidth(2)),
        Text(
          login ? "ليس لديك حساب ؟ " : "هل لديك حساب ؟ ",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: responsive.setTextSize(3.8),
          ),
        ),
      ],
    );
  }
}
