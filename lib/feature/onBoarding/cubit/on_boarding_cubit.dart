import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/feature/onBoarding/data/model/on_boarding_model.dart';

part 'on_boarding_state.dart';
part 'on_boarding_cubit.freezed.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState.initial());

  final PageController pageController = PageController();

  int indexData = 0;

  void onPageChanged(index) {
    indexData = index;

    emit(OnBoardingState.onBoardingIndex(indexData));
  }

  void goNext(context) {
    if (indexData == 3) {
      // Navigator.pushReplacementNamed(context, Routes.loginRoute);
      // _appPreferences.setOnBoardingScreenView();
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
  }

  List<SliderObject> getSliderData() => [
    SliderObject(
      title: "احنا هنا علشان نخلى التوفير سهل",
      subTitle: "حتى لو من جنية فى اليوم",
      image: ImageAsset.onBoardingFirstScreen,
    ),
    SliderObject(
      title: "حدد هدفك واحنا هنمشى معاك",
      subTitle: "خطوة بخطوة لحد ما توصل",
      image: ImageAsset.onBoardingSecondScreen,
    ),
    SliderObject(
      title: "سجل مصاريفك تابع تقدمك...",
      subTitle: "وخليك فخور بكل جنية وفرتة",
      image: ImageAsset.onBoardingThirdScreen,
    ),
  ];
}
