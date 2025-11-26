import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/profile/presentation/widget/header_clipper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xffF4F7F6),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(responsive),
              const SizedBox(height: 16),

              _buildTitle("إعدادات أخرى"),

              const SizedBox(height: 12),

              _settingsItem(
                icon: Icons.language,
                title: "اللغة",
                responsive: responsive,
              ),

              _settingsItem(
                icon: Icons.notifications_active_outlined,
                title: "الإشعارات",
                responsive: responsive,
              ),

              _settingsItem(
                icon: Icons.lock_outline,
                title: "تغيير كلمة السر",
                responsive: responsive,
              ),

              _settingsItem(
                icon: Icons.security_outlined,
                title: "حماية الحساب",
                responsive: responsive,
              ),

              SizedBox(height: responsive.setHeight(2)),

              _logoutButton(responsive, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ResponsiveUtils responsive) {
    return Stack(
      children: [
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            height: responsive.setHeight(35),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: const [
                  Text(
                    "الإعدادات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          bottom: responsive.setHeight(3),
          left: 0,
          right: 0,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(ImageAsset.profile),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: responsive.setIconSize(5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: responsive.setHeight(1)),
              const Text(
                "نسمة خالد",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: responsive.setHeight(0.5)),
              const Text(
                "@nesmakhaled624",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _settingsItem({
    required IconData icon,
    required String title,
    required ResponsiveUtils responsive,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: responsive.setWidth(3),
        vertical: responsive.setHeight(0.8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: responsive.setWidth(3),
        vertical: responsive.setHeight(1.8),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(2)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 22, color: Colors.black54),

          SizedBox(width: responsive.setWidth(2.5)),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 15))),
          Icon(Icons.arrow_forward_ios, size: responsive.setIconSize(4)),
        ],
      ),
    );
  }

  Widget _logoutButton(ResponsiveUtils responsive, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: responsive.setWidth(3)),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(IconlyBold.logout),
          label: Text(
            "تسجيل الخروج",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: responsive.setTextSize(3.5),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                responsive.setBorderRadius(2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
