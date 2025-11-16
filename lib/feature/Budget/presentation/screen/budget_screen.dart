import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Budget/logic/monthly_stats_cubit.dart';
import 'package:tahwishtak/feature/Budget/presentation/widget/get_activity_color.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class CustomDonutChart extends StatefulWidget {
  const CustomDonutChart({super.key});

  @override
  State<CustomDonutChart> createState() => _CustomDonutChartState();
}

class _CustomDonutChartState extends State<CustomDonutChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return BlocBuilder<MonthlyStatsCubit, MonthlyStatsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("الميزانية الشهرية"),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Padding(
                padding: responsive.setPadding(left: 65),
                child: IconButton(
                  onPressed: () async {
                    final selectedDate = await showMonthPicker(
                      monthPickerDialogSettings: MonthPickerDialogSettings(
                        headerSettings: PickerHeaderSettings(
                          headerBackgroundColor: Colors.teal[800],
                        ),
                        dialogSettings: PickerDialogSettings(
                          dialogBackgroundColor: ColorManger.bGColor,
                        ),
                      ),
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );

                    if (selectedDate != null) {
                      final month = selectedDate.month;
                      final year = selectedDate.year;

                  
                      context.read<MonthlyStatsCubit>().fetchGetMonthlyStats(
                        month: month,
                        year: year,
                      );
                    }
                  },
                  icon: Icon(
                    IconlyBold.calendar,
                    color: Colors.teal[800],
                    size: responsive.setIconSize(8),
                  ),
                ),
              ),

              Padding(
                padding: responsive.setPadding(left: 7),
                child: Stack(
                  children: [
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        final model = context
                            .watch<MonthlyStatsCubit>()
                            .getMonthlyStatsModel;

                        final apiData = model?.data ?? [];

                        final chartData = context
                            .read<MonthlyStatsCubit>()
                            .convertToChartData(apiData);

                        return CustomPaint(
                          size: const Size(250, 250),
                          painter: DonutPainter(
                            chartData,
                            animationValue: _controller.value,
                          ),
                        );
                      },
                    ),
                    Positioned(
                      top: responsive.setHeight(12),
                      left: responsive.setWidth(22),
                      child: Column(
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              "${context.read<MonthlyStatsCubit>().getMonthlyStatsModel?.totalSpentInMonth ?? 0} ج",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "مصروفات",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: responsive.setHeight(6)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Divider(),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  itemCount:
                      (context
                                  .read<MonthlyStatsCubit>()
                                  .getMonthlyStatsModel
                                  ?.data
                                  ?.length ??
                              0) *
                          2 -
                      1 +
                      1,
                  itemBuilder: (context, index) {
                    final dataList =
                        context
                            .read<MonthlyStatsCubit>()
                            .getMonthlyStatsModel
                            ?.data ??
                        [];

                    if (index.isEven) {
                      final item = dataList[index ~/ 2];
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            Container(
                              width: 10,
                              height: 15,
                              decoration: BoxDecoration(
                                color: getActivityColor(item.category),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text("${item.category}"),
                            Spacer(),
                            Text("${item.amount} ج"),
                          ],
                        ),
                      );
                    } else {
                      return const Divider();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Divider(), // Divider آخر
              ),
            ],
          ),
        );
      },
    );
  }
}

class DonutPainter extends CustomPainter {
  final List<Map<String, dynamic>> data;
  final double animationValue;
  DonutPainter(this.data, {this.animationValue = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2.5;
    final strokeWidth = 50.0;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double startAngle = -pi / 2;

    for (var section in data) {
      final sweepAngle = section["percent"] * 2 * pi * animationValue;
      paint.color = section["color"];
      final gap = 0.35;

      final midAngle = startAngle + (sweepAngle / 2);

      double offsetDistance = 0;
      if (section["color"] == Colors.teal[800]) {
        offsetDistance = 25;
      }

      final offset = Offset(
        cos(midAngle) * offsetDistance,
        sin(midAngle) * offsetDistance,
      );

      canvas.drawArc(
        Rect.fromCircle(center: center + offset, radius: radius),
        startAngle,
        sweepAngle - gap,
        false,
        paint,
      );

      startAngle += section["percent"] * 2 * pi;
    }
  }

  @override
  bool shouldRepaint(covariant DonutPainter oldDelegate) => true;
}
