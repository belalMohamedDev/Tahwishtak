import 'package:tahwishtak/core/services/app_storage_key.dart';
import 'package:tahwishtak/core/services/shared_pref_helper.dart';
import 'package:tahwishtak/core/utils/extensions.dart';

class AppInitialRoute {
  factory AppInitialRoute() {
    return _instance;
  }

  AppInitialRoute._();

  static final AppInitialRoute _instance = AppInitialRoute._();

  static bool isLoggedInUser = false;
  static bool isOnBoardingScreen = false;

  getStoreDataAndCheckInitialRoute() async {
    bool? isOnBoardingScreenView = SharedPrefHelper.getBool(
      PrefKeys.prefsKeyOnBoardingScreenView,
    );

    String userToken = await SharedPrefHelper.getSecuredString(
      PrefKeys.refreshToken,
    );

    if (isOnBoardingScreenView == true) {
      isOnBoardingScreen = true;
    }

    if (!userToken.isNullOrEmpty()) {
      isLoggedInUser = true;
    } else {
      isLoggedInUser = false;
    }
  }
}
