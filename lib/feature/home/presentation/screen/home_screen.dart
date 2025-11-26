import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/application/di.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/extensions.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/home/presentation/widget/balance_gauge.dart';
import 'package:tahwishtak/feature/home/presentation/widget/daily_activity_screen.dart';
import 'package:tahwishtak/feature/home/presentation/widget/get_activity_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
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
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.profileRoute);
                        },
                        child: CircleAvatar(
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
                              elevation: 0.1,
                              shadowColor: ColorManger.whiteColor,
                              color: ColorManger.whiteColor,

                              child: ListTile(
                                leading: Image.asset(
                                  getActivityImage(activity?.type),
                                  height: responsive.setHeight(5),
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
