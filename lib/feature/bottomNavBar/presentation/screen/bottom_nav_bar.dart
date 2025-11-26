import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/Budget/logic/monthly_stats_cubit.dart';
import 'package:tahwishtak/feature/Budget/presentation/screen/budget_screen.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/home/presentation/screen/home_screen.dart';

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeCubit>().fetchGetTodayActivities();
      context.read<MonthlyStatsCubit>().fetchGetMonthlyStats();
    });
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
      bottomNavigationBar: SizedBox(
        height: responsive.setHeight(9),
        child: SlidingClippedNavBar(
          backgroundColor: Colors.white,

          onButtonPressed: onButtonPressed,
          iconSize: responsive.setIconSize(8),
          activeColor: ColorManger.primaryColor,
          fontSize: responsive.setTextSize(3),
          selectedIndex: selectedIndex,

          barItems: <BarItem>[
            BarItem(icon: IconlyBold.chart, title: 'تقسيم الميزانية'),
            BarItem(icon: IconlyBold.home, title: 'الصفحة الرئيسية         '),
          ],
        ),
      ),
    );
  }
}

List<Widget> _listOfWidget = <Widget>[CustomDonutChart(), HomePage()];
