import 'package:flutter/material.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/register_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Scaffold(
      backgroundColor: ColorManger.bGGreenColor,
      body: Stack(
        children: [
          RegisterForm(),
          Container(
            padding: responsive.setPadding(top: 32, left: 30, right: 30),
            child: Container(
              height: responsive.setHeight(0.4),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(223, 95, 46, 0.3),
                borderRadius: BorderRadius.circular(
                  responsive.setBorderRadius(100),
                ),
              ),
            ),
          ),
          Positioned(
            top: responsive.setHeight(8),
            left: responsive.setWidth(19),
            child: Image.asset(
              ImageAsset.signUp,
              height: responsive.setHeight(30),
            ),
          ),
        ],
      ),
    );
  }
}
