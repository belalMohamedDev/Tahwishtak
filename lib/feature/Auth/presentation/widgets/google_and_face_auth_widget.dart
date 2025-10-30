import 'package:flutter/material.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class GoogleAndFaceAuthWidget extends StatelessWidget {
  const GoogleAndFaceAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          maxRadius: responsive.setIconSize(10),
          backgroundColor: ColorManger.bGColor,
          child: Image.asset(
            ImageAsset.facebook,
            height: responsive.setHeight(20),
          ),
        ),
        SizedBox(width: responsive.setWidth(3)),
        CircleAvatar(
          maxRadius: responsive.setIconSize(10),
          backgroundColor: ColorManger.bGColor,
          child: Image.asset(
            ImageAsset.google,
            height: responsive.setHeight(20),
          ),
        ),
      ],
    );
  }
}