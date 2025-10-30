import 'package:flutter/material.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:toastification/toastification.dart';

class ShowToast {
  const ShowToast._();

  static void showToastErrorTop({
    required String errorMessage,
    required BuildContext context,
  }) => toastification.show(
    context: context, // optional if you use ToastificationWrapper
    title: Text(errorMessage),
    alignment: Alignment.topLeft,
    animationDuration: const Duration(milliseconds: 200),

    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    closeOnClick: true,
    applyBlurEffect: true,

    autoCloseDuration: const Duration(seconds: 3),
    backgroundColor: const Color(0xFFED201B),
    progressBarTheme: ProgressIndicatorThemeData(
      color: Colors.white,
      linearMinHeight: 2,
    ),

    primaryColor: ColorManger.whiteColor,
    foregroundColor: ColorManger.whiteColor,
    style: ToastificationStyle.fillColored,

    type: ToastificationType.error,
  );

  static void showToastSuccessTop({
    required String message,
    required BuildContext context,
  }) => toastification.show(
    context: context, // optional if you use ToastificationWrapper
    title: Text(message),
    alignment: Alignment.topLeft,
    animationDuration: const Duration(milliseconds: 200),

    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    showProgressBar: false,
    closeOnClick: true,
    backgroundColor: ColorManger.primaryColor,
    autoCloseDuration: const Duration(seconds: 2),

    primaryColor: ColorManger.whiteColor,
    foregroundColor: ColorManger.whiteColor,
    style: ToastificationStyle.fillColored,

    type: ToastificationType.success,
  );
}
