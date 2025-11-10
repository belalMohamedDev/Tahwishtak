import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/presentation/widget/add_price.dart';

class BalanceGaugeWidget extends StatelessWidget {
  final double currentBalance;
  final double maxBalance;
  final String date;

  const BalanceGaugeWidget({
    super.key,
    required this.currentBalance,
    required this.maxBalance,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    final double normalizedValue = currentBalance.clamp(0, maxBalance);

    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: responsive.setHeight(22),
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        startAngle: 180,
                        endAngle: 0,
                        minimum: 0,
                        maximum: maxBalance,
                        showLabels: false,
                        showTicks: false,
                        canScaleToFit: true,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.22,
                          cornerStyle: CornerStyle.bothFlat,
                          thicknessUnit: GaugeSizeUnit.factor,
                          color: Colors.grey.shade300,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: normalizedValue,
                            width: 0.15,
                            sizeUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothFlat,
                            gradient: const SweepGradient(
                              colors: [Color(0xFF00796B), Color(0xFF26A69A)],
                            ),
                            enableAnimation: true,
                            animationDuration: 1000,
                            animationType: AnimationType.easeOutBack,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Positioned(
                    top: responsive.setHeight(12),
                    child: Column(
                      children: [
                        Text(
                          "ج  $currentBalance",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                color: ColorManger.secondaryColor,
                                fontSize: responsive.setTextSize(7),
                              ),
                        ),
                        SizedBox(height: responsive.setHeight(0.5)),
                        Text(
                          "رصيدك دلوقتي",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontSize: responsive.setTextSize(4.5)),
                        ),
                        SizedBox(height: responsive.setHeight(1)),
                        Text(date),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          right: responsive.setWidth(8),
          top: responsive.setHeight(2),
          child: GestureDetector(
            onTap: () => _showAddPriceSheet(context),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Color(0xFF00796B), Color(0xFF26A69A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Icon(
                IconlyBold.plus,
                color: Colors.white,
                size: responsive.setIconSize(9),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showAddPriceSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const AddPrice();
      },
    );
  }
}
