import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

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
    final data = [
      {
        "category": "معاملات بنكية",
        "color": Colors.teal[800]!,
        "percent": 0.39,
        "amount": 250,
      },
      {
        "category": "التسوق",
        "color": Colors.green[300]!,
        "percent": 0.24,
        "amount": 240,
      },
      {
        "category": "مواصلات",
        "color": Colors.orange[300]!,
        "percent": 0.15,
        "amount": 150,
      },
      {
        "category": "شراء مأكولات",
        "color": Colors.yellow[600]!,
        "percent": 0.11,
        "amount": 110,
      },
      {
        "category": "الحيوانات",
        "color": Colors.teal[300]!,
        "percent": 0.11,
        "amount": 100,
      },
    ];

    final responsive = ResponsiveUtils(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("الميزانية اليومية"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: responsive.setPadding(top: 5, right: 4),
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return CustomPaint(
                      size: const Size(250, 250),
                      painter: DonutPainter(
                        data,
                        animationValue: _controller.value,
                      ),
                    );
                  },
                ),
                Positioned(
                  top: responsive.setHeight(11),
                  left: responsive.setWidth(25),
                  child: Column(
                    children: const [
                      Text(
                        "1000 ج",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
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
          SizedBox(height: responsive.setHeight(8)),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              itemCount: data.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final item = data[index];
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 15,
                            decoration: BoxDecoration(
                              color: item["color"] as Color?,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(item["category"] as String),
                        ],
                      ),
                      Text("${item["amount"]} ج"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
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
