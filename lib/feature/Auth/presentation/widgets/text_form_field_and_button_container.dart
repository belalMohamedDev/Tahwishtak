import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class TextFormFieldAndButtonContainer extends StatelessWidget {
  const TextFormFieldAndButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Padding(
      padding: responsive.setPadding(top: 37),
      child: Expanded(
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
                _roeWidget(context, responsive),
                SizedBox(height: responsive.setHeight(2)),

                _googleAndFaceAuth(responsive),
                SizedBox(height: responsive.setHeight(1)),
                _dontHaveAccount(context, responsive),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _dontHaveAccount(BuildContext context, ResponsiveUtils responsive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "سجل هنا",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: responsive.setTextSize(3.8),
          ),
        ),
        SizedBox(width: responsive.setWidth(2)),
        Text(
          "ليس لديك حساب ؟ ",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: responsive.setTextSize(3.8),
          ),
        ),
      ],
    );
  }

  Row _googleAndFaceAuth(ResponsiveUtils responsive) {
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

  Row _roeWidget(BuildContext context, ResponsiveUtils responsive) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorManger.primaryColor,
            thickness: 1,
            endIndent: 8,
          ),
        ),
        Text(
          'او',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: responsive.setTextSize(4.5),
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorManger.primaryColor,
            thickness: 1,
            indent: 8,
          ),
        ),
      ],
    );
  }
}
