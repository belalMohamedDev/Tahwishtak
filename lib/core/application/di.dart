import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tahwishtak/core/application/bloc_observer.dart';
import 'package:tahwishtak/core/network/api/app_api.dart';
import 'package:tahwishtak/core/network/dio_factory/dio_factory.dart';
import 'package:tahwishtak/feature/Auth/data/repository/auth_repo.dart';
import 'package:tahwishtak/feature/Auth/logic/SignUpBloc/sign_up_bloc.dart';
import 'package:tahwishtak/feature/Auth/logic/loginBloc/login_bloc.dart';
import 'package:tahwishtak/feature/home/data/repository/home_repo.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/onBoarding/cubit/on_boarding_cubit.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  await Future.wait([
    _initAppModule(),
    _initOnBoarding(),
    _initAuth(),
    _initHome(),
  ]);
}

Future<void> _initAppModule() async {
  Bloc.observer = AppBlocObserver();

  await Hive.initFlutter();
  // Dio & ApiService

  Dio dio = DioFactory.getDio();

  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
}

Future<void> _initOnBoarding() async {
  instance.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());
}

Future<void> _initAuth() async {
  instance.registerLazySingleton<AuthenticationRepositoryImplement>(
    () => AuthenticationRepositoryImplement(instance()),
  );
  instance.registerFactory<LoginBloc>(() => LoginBloc(instance()));

  instance.registerFactory<SignUpBloc>(() => SignUpBloc(instance()));
}

Future<void> _initHome() async {
  instance.registerLazySingleton<HomeRepositoryImplement>(
    () => HomeRepositoryImplement(instance()),
  );
  instance.registerLazySingleton<HomeCubit>(() => HomeCubit(instance()));
}
