import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/home/presentation/widget/balance_gauge.dart';
import 'package:tahwishtak/feature/home/presentation/widget/get_activity_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleMenu() {
    setState(() {
      if (isOpened) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      isOpened = !isOpened;
    });
  }

  Widget _buildOption({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF00796B), Color(0xFF26A69A)],
              ).createShader(bounds),
              child: const Icon(IconlyBold.wallet, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF00796B),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Stack(
            alignment: Alignment.bottomRight,

            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: responsive.setHeight(10),
                  left: responsive.screenWidth * 0.66,
                ),
                child: SizeTransition(
                  sizeFactor: _animation,
                  axisAlignment: -1.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildOption(
                        icon: IconlyBold.wallet,
                        label: 'تحويشتك',
                        onPressed: () {},
                      ),
                      SizedBox(height: responsive.setHeight(1)),
                      _buildOption(
                        icon: IconlyBold.plus,
                        label: 'مصروفاتك',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: isOpened
                    ? Colors.orange
                    : const Color(0xFF00796B),
                onPressed: toggleMenu,
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: _animationController,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: responsive.setPadding(top: 1, left: 4, right: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.25),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: ColorManger.whiteColor,
                          maxRadius: responsive.setHeight(3),
                          child: Padding(
                            padding: responsive.setPadding(top: 1),
                            child: Image.asset(
                              ImageAsset.notification,
                              height: responsive.setHeight(4.5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: responsive.setWidth(3)),
                      Expanded(
                        child: Container(
                          height: responsive.setHeight(8),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withValues(alpha: 0.12),
                                blurRadius: 30,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: "ابحث هنا بالتاريخ",
                              suffixIcon: Padding(
                                padding: responsive.setPadding(
                                  top: 1,
                                  right: 2,
                                ),
                                child: Image.asset(ImageAsset.search),
                              ),

                              suffixIconConstraints: BoxConstraints(
                                maxHeight: responsive.setHeight(12),
                                maxWidth: responsive.setWidth(12),
                              ),

                              fillColor: ColorManger.whiteColor,

                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontSize: responsive.setTextSize(3.5),
                                    color: ColorManger.textColor,
                                  ),

                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorManger.secondaryTextColor
                                      .withAlpha(50),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(
                                    responsive.setBorderRadius(4),
                                    responsive.setBorderRadius(4),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: responsive.setWidth(4)),
                      CircleAvatar(
                        backgroundColor: ColorManger.whiteColor,
                        maxRadius: responsive.setHeight(3),
                        child: ClipOval(
                          child: Image.asset(
                            fit: BoxFit.cover,
                            ImageAsset.profile,
                            height: responsive.setHeight(10),
                          ),
                        ),
                      ),
                    ],
                  ),

                  BalanceGaugeWidget(
                    currentBalance:
                        context
                            .read<HomeCubit>()
                            .getTodayActivities
                            ?.currentBalance ??
                        0.0,
                    maxBalance:
                        context
                            .read<HomeCubit>()
                            .getTodayActivities
                            ?.startingBalance ??
                        500.0,
                    date:
                        context.read<HomeCubit>().getTodayActivities?.date ??
                        '--',
                  ),

                  SizedBox(height: responsive.setHeight(2)),

                  Divider(
                    color: ColorManger.textColor.withAlpha(80),
                    thickness: 0.6,
                  ),
                  SizedBox(height: responsive.setHeight(2)),
                  Row(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "${context.read<HomeCubit>().getTodayActivities?.totalSpent ?? '--'}  ج",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontSize: responsive.setTextSize(4.5)),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "نشاطك اليومي",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: responsive.setTextSize(4),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.setHeight(2)),

                  Expanded(
                    child: ListView.builder(
                      itemCount:
                          context
                              .read<HomeCubit>()
                              .getTodayActivities
                              ?.activities
                              ?.length ??
                          0,

                      itemBuilder: (context, index) {
                        final activity = context
                            .read<HomeCubit>()
                            .getTodayActivities
                            ?.activities?[index];
                        return Padding(
                          padding: responsive.setPadding(bottom: 1),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Card(
                              margin: EdgeInsets.zero,
                              color: ColorManger.whiteColor,

                              child: ListTile(
                                leading: Icon(
                                  getActivityIcon(activity?.type),
                                  color: Colors.orange,
                                  size: responsive.setIconSize(10),
                                ),
                                title: Text(
                                  activity?.type ?? "نشاط غير محدد",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "الساعة:   ${activity?.time ?? '--'}",
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color: ColorManger.secondaryTextColor,
                                      ),
                                ),
                                trailing: Text(
                                  "${activity?.price ?? '--'}  ج",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(
                                        fontSize: responsive.setTextSize(3.5),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
