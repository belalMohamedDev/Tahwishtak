import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/onBoarding/cubit/on_boarding_cubit.dart';
import 'package:tahwishtak/feature/onBoarding/presentation/widgets/slider_object_view_widget.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final onBoardingCubit = context.read<OnBoardingCubit>();
        return Scaffold(
          appBar: AppBar(),
          body: PageView.builder(
            controller: onBoardingCubit.pageController,
            itemCount: onBoardingCubit.getSliderData().length,
            onPageChanged: (index) => onBoardingCubit.onPageChanged(index),
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: onBoardingCubit.pageController,
                builder: (context, child) {
                  double value = 1.0;
                  if (onBoardingCubit.pageController.hasClients &&
                      onBoardingCubit.pageController.position.haveDimensions &&
                      onBoardingCubit.pageController.page != null) {
                    value = onBoardingCubit.pageController.page! - index;
                    value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                  }

                  return Transform.scale(
                    scale: value,
                    child: Opacity(
                      opacity: value,
                      child: SliderObjectView(
                        onBoardingCubit.getSliderData()[index],
                      ),
                    ),
                  );
                },
              );
            },
          ),

          bottomSheet: Container(
            height: responsive.setHeight(20),
            padding: responsive.setPadding(
              left: onBoardingCubit.indexData == 2 ? 5 : 12,
              right: onBoardingCubit.indexData == 2 ? 5 : 10,
              bottom: 5,
            ),
            color: ColorManger.bGColor,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: onBoardingCubit.indexData == 2
                  ? ElevatedButton(
                      key: const ValueKey('startBtn'),
                      onPressed: () {
                        onBoardingCubit.goNext(context);
                      },
                      child: const Text("يلا نبدأ"),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        TextButton(
                          onPressed: () {
                            onBoardingCubit.skip(context);
                          },
                          child: Text(
                            'تخطى',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(width: responsive.setWidth(5)),
                        SmoothPageIndicator(
                          effect: ScrollingDotsEffect(
                            dotColor: ColorManger.secondaryTextColor,
                            activeDotColor: ColorManger.primaryColor,
                            dotHeight: responsive.setHeight(1.5),
                            spacing: 7,
                            dotWidth: responsive.setWidth(3),
                          ),
                          controller: onBoardingCubit.pageController,
                          count: 2,
                        ),
                        SizedBox(width: responsive.setWidth(5)),
                        ElevatedButton(
                          onPressed: () {
                            onBoardingCubit.goNext(context);
                          },
                          style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all(Size(50, 50)),
                          ),
                          child: Text("التالى"),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
