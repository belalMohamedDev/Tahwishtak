import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tahwishtak/core/application/di.dart';
import 'package:tahwishtak/core/common/statsScreen/route_state.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/feature/Auth/logic/SignUpBloc/sign_up_bloc.dart';
import 'package:tahwishtak/feature/Auth/logic/loginBloc/login_bloc.dart';
import 'package:tahwishtak/feature/Auth/presentation/screens/login_screen.dart';
import 'package:tahwishtak/feature/Auth/presentation/screens/register_screen.dart';
import 'package:tahwishtak/feature/bottomNavBar/presentation/screen/bottom_nav_bar.dart';
import 'package:tahwishtak/feature/home/presentation/screen/home_screen.dart';
import 'package:tahwishtak/feature/onBoarding/cubit/on_boarding_cubit.dart';
import 'package:tahwishtak/feature/onBoarding/presentation/screens/on_boarding_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<OnBoardingCubit>(),
            child: const OnBoardingScreens(),
          ),
        );

      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<LoginBloc>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signUpRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<SignUpBloc>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.homRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.bottomNavBarRoute:
        return MaterialPageRoute(builder: (_) => const NativeBottomNavBar());

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
          child: Center(child: Text("لم يتم العثور على طريق")),
        ),
      ),
    );
  }
}
