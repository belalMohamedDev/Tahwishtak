import 'package:flutter/material.dart';
import 'package:tahwishtak/core/common/statsScreen/route_state.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/feature/onBoarding/presentation/screens/on_boarding_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreens());

      case Routes.noRoute:
        return MaterialPageRoute(builder: (_) => const RouteStatesScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text("لم يتم العثور على طريق")),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text("لم يتم العثور على طريق"),
          ),
        ),
      ),
    );
  }
}
