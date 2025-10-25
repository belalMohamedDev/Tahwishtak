import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tahwishtak/core/application/bloc_observer.dart';
import 'package:tahwishtak/feature/onBoarding/cubit/on_boarding_cubit.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  await Future.wait([_initAppModule(), _initOnBoarding()]);
}

Future<void> _initAppModule() async {
  Bloc.observer = AppBlocObserver();
}

Future<void> _initOnBoarding() async {
  // //home repository
  instance.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());
}
