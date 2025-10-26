import 'package:flutter/material.dart';

import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Auth/presentation/widgets/text_form_field_and_button_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Scaffold(
      backgroundColor: ColorManger.bGGreenColor,

      body: Stack(
        children: [
          TextFormFieldAndButtonContainer(),
          Positioned(
            top: responsive.setHeight(9),
            left: responsive.setWidth(20),
            child: Image.asset(
              ImageAsset.login,
              height: responsive.setHeight(34),
            ),
          ),
        ],
      ),
    );
  }
}
