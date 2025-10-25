import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tahwishtak/app.dart';
import 'package:tahwishtak/core/application/di.dart';
import 'package:tahwishtak/core/services/shared_pref_helper.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/utils/app_initial_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();

  await SharedPrefHelper.getInstancePreferences().whenComplete(() async {
    await AppInitialRoute().getStoreDataAndCheckInitialRoute();
  });

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorManger.bGColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}
