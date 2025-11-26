import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tahwishtak/core/application/di.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/home/presentation/widget/add_price.dart';
import 'package:tahwishtak/feature/home/presentation/widget/daily_activity_screen.dart';

class BalanceGaugeWidget extends StatefulWidget {
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
  State<BalanceGaugeWidget> createState() => _BalanceGaugeWidgetState();
}

class _BalanceGaugeWidgetState extends State<BalanceGaugeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleMenu() {
    setState(() {
      if (isOpened) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      isOpened = !isOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    final double normalizedValue = widget.currentBalance.clamp(
      0,
      widget.maxBalance,
    );

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
                        maximum: widget.maxBalance,
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
                          "ج  ${widget.currentBalance}",
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
                        Text(widget.date),
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
            onTap: toggleMenu,
            //
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

        Positioned(
          right: responsive.setWidth(1),
          top: responsive.setHeight(9),
          child: SizeTransition(
            sizeFactor: _animation,
            axisAlignment: -1.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildOption(
                  icon: IconlyBold.wallet,
                  label: 'أضف رصيد',
                  onPressed: () => _showAddPriceSheet(context),
                ),
                SizedBox(height: responsive.setHeight(1)),
                _buildOption(
                  icon: IconlyBold.plus,
                  label: 'اضف نشاط ',
                  onPressed: () => _showActivitySheet(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF00796B), Color(0xFF26A69A)],
              ).createShader(bounds),
              child: const Icon(IconlyBold.wallet, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF00796B),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showActivitySheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BlocProvider.value(
          value: instance<HomeCubit>(),
          child: const ActivityBottomSheet(),
        );
      },
    );
  }

  void _showAddPriceSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BlocProvider.value(
          value: instance<HomeCubit>(),
          child: const AddPrice(),
        );
      },
    );
  }
}
