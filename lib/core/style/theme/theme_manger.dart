import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/fonts/font_manger.dart';
import 'package:tahwishtak/core/style/fonts/styles_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

ThemeData getApplicationTheme(BuildContext context) {
  final responsive = ResponsiveUtils(context);

  return ThemeData(
    scaffoldBackgroundColor: ColorManger.bGColor,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
    ),

    // //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: ColorManger.primaryColor,
        foregroundColor: ColorManger.bGColor,

        textStyle: getMediumStyle(
          fontSize: responsive.setTextSize(3.8),
          color: ColorManger.bGColor,
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
        ),
        fixedSize: Size.fromHeight(40),
      ),
    ),
    //
    // //appbar theme
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorManger.bGColor,
        size: responsive.setIconSize(5),
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManger.bGColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      color: ColorManger.bGColor,
    ),

    // //text theme
    //
    textTheme: TextTheme(
      // using in text on boarding
      titleLarge: getMediumStyle(
        fontSize: responsive.setTextSize(5),
        color: ColorManger.textColor,
      ),

      titleMedium: getMediumStyle(
        fontSize: responsive.setTextSize(3),
        color: ColorManger.secondaryTextColor,
      ),

      titleSmall: getExtraBoldStyle(
        fontSize: responsive.setTextSize(3),
        color: ColorManger.whiteColor,
      ),
    ),

    //
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManger.bGColor,
      showUnselectedLabels: true,
    ),

    // input decoration theme ( text form field )
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 8.0),
      prefixStyle: getMediumStyle(
        fontSize: 13,
        color: ColorManger.secondaryTextColor,
      ),
      hintStyle: getMediumStyle(
        fontSize: responsive.setTextSize(3.5),
        color: ColorManger.secondaryTextColor,
      ),
      errorStyle: TextStyle(
        fontSize: 11,
        fontFamily: FontConsistent.fontFamilyCairo,
        fontWeight: FontWeight.w500,
      ),
      prefixIconColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.focused)
            ? ColorManger.secondaryTextColor
            : ColorManger.secondaryTextColor,
      ),
      suffixIconColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.focused)
            ? ColorManger.secondaryTextColor
            : ColorManger.secondaryTextColor,
      ),
      labelStyle: getMediumStyle(
        fontSize: 10,
        color: ColorManger.secondaryTextColor,
      ),
      filled: true,
      fillColor: ColorManger.bGColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManger.primaryColor),
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2.5)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2.5)),
        borderSide: BorderSide(
          color: ColorManger.secondaryTextColor,
          width: 0.4,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2.5)),
        borderSide: BorderSide(
          color: ColorManger.secondaryTextColor,
          width: 0.4,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2.5)),
        borderSide: BorderSide(
          color: ColorManger.secondaryTextColor,
          width: 0.4,
        ),
      ),
    ),
  );
}
