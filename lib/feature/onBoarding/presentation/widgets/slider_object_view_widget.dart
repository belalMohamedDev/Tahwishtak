import 'package:flutter/material.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/onBoarding/data/model/on_boarding_model.dart';

class SliderObjectView extends StatelessWidget {
  final SliderObject sliderData;
  const SliderObjectView(this.sliderData, {super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 700),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, 50 * (1 - value)),
          child: child,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Image.asset(sliderData.image ?? "", height: responsive.setHeight(55)),
          const SizedBox(height: 20),
          Text(
            sliderData.title ?? '',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Text(
            sliderData.subTitle ?? "",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: responsive.setTextSize(4),
            ),
          ),
        ],
      ),
    );
  }
}
