

import 'package:tahwishtak/core/services/app_storage_key.dart';
import 'package:tahwishtak/core/services/shared_pref_helper.dart';

class AppInitialRoute {
  factory AppInitialRoute() {
    return _instance;
  }

  AppInitialRoute._();

  static final AppInitialRoute _instance = AppInitialRoute._();

  static bool isLoggedInUser = false;
  static bool isOnBoardingScreen = false;


  getStoreDataAndCheckInitialRoute() async {

    bool? isOnBoardingScreenView =
        SharedPrefHelper.getBool(PrefKeys.prefsKeyOnBoardingScreenView);


    

    if (isOnBoardingScreenView == true) {
      isOnBoardingScreen = true;
    }

    
  }
}
