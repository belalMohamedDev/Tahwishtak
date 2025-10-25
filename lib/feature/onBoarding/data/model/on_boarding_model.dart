import 'package:flutter/material.dart';

class SliderObject {
  SliderObject({this.title, this.image, this.subTitle});
  String? title;
  String? subTitle;
  String? image;
}


class SliderViewObject {
  SliderViewObject(
      {required this.list, required this.isSecondPage, required this.isLast, required this.pageController, this.numberOfSlides,});
  int? numberOfSlides;
  bool isLast;
  List<SliderObject> list;
  bool isSecondPage;
  PageController pageController;
}