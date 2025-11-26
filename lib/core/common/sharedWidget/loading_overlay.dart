import 'package:flutter/material.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;

  const LoadingOverlay({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return Stack(
      children: [
        if (isLoading) ...[
          Opacity(
            opacity: 0.2,
            child: Container(
              color: ColorManger.whiteColor,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Container(
              height: responsive.setHeight(10),
              width: responsive.setWidth(22),
              decoration: BoxDecoration(
                color: ColorManger.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorManger.whiteColor,
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
