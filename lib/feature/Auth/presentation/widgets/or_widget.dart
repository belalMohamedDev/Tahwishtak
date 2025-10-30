import 'package:flutter/material.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
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
