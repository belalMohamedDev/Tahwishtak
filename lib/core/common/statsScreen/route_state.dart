import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tahwishtak/core/common/statsScreen/error_info.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';

class RouteStatesScreen extends StatelessWidget {
  const RouteStatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  ImageAsset.noRoute,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(height: 20),
            ErrorInfo(
              title: "أنت غير مسجل الدخول",
              description:
                  "يرجى تسجيل الدخول للمتابعة والاستمتاع بالوصول الكامل لميزات التطبيق. قم بتسجيل الدخول الآن لاستكشاف واستخدام التطبيق بسلاسة",
              btnText: "تسجيل الدخول",
              press: () async {},
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
