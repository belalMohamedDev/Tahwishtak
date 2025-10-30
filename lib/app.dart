import 'package:flutter/material.dart';
import 'package:tahwishtak/core/routing/route_manger.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tahwishtak/core/style/theme/theme_manger.dart';
import 'package:tahwishtak/core/utils/app_initial_route.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor

  static const MyApp _instance = MyApp._internal(); // singleton instance
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: "تحوويشتك",
      initialRoute: _getInitialRoute(),
      onGenerateRoute: RouteGenerator.getRoute,
      theme: getApplicationTheme(context),
    );
  }
}

String _getInitialRoute() {
  if (AppInitialRoute.isOnBoardingScreen) {
    if (AppInitialRoute.isLoggedInUser) {
      return Routes.loginRoute;
    } else {
      return Routes.loginRoute;
    }
  } else {
    return Routes.onBoardingRoute;
  }
}
