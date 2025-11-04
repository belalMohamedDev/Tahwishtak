import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/bottomNavBar/presentation/screen/home_screen.dart';

class NativeBottomNavBar extends StatefulWidget {
  const NativeBottomNavBar({super.key});

  @override
  State<NativeBottomNavBar> createState() => _NativeBottomNavBarState();
}

class _NativeBottomNavBarState extends State<NativeBottomNavBar> {
  late PageController _pageController;
  int selectedIndex = 3;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,

        onButtonPressed: onButtonPressed,
        iconSize: responsive.setIconSize(8),
        activeColor: ColorManger.primaryColor,
        fontSize: responsive.setTextSize(3),
        selectedIndex: selectedIndex,

        barItems: <BarItem>[
          BarItem(icon: IconlyBold.setting, title: 'الاعدادات'),
          BarItem(icon: Icons.bar_chart_sharp, title: 'التحليل الشهرى'),
          BarItem(icon: IconlyBold.chart, title: 'تقسيم الميزانية'),
          BarItem(icon: IconlyBold.home, title: 'الصفحة الرئيسية         '),
        ],
      ),
    );
  }
}

List<Widget> _listOfWidget = <Widget>[
  Container(
    alignment: Alignment.center,
    child: const Icon(IconlyBold.home, size: 56, color: Colors.green),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(IconlyBold.search, size: 56, color: Colors.brown),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(Icons.bolt, size: 56, color: Colors.brown),
  ),
  HomePage(),
];
