import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tahwishtak/core/common/sharedWidget/loading_overlay.dart';
import 'package:tahwishtak/core/routing/routes.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/extensions.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';
import 'package:tahwishtak/feature/home/presentation/widget/balance_gauge.dart';
import 'package:tahwishtak/feature/home/presentation/widget/daily_activity_screen.dart';
import 'package:tahwishtak/feature/home/presentation/widget/get_activity_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: responsive.setPadding(top: 1, left: 4, right: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _appBarWidget(responsive, context),

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
                            context
                                .read<HomeCubit>()
                                .getTodayActivities
                                ?.date ??
                            '--',
                      ),

                      SizedBox(height: responsive.setHeight(2)),

                      Divider(
                        color: ColorManger.textColor.withAlpha(80),
                        thickness: 0.6,
                      ),
                      SizedBox(height: responsive.setHeight(2)),
                      _todayActivityPriceRow(context, responsive),
                      SizedBox(height: responsive.setHeight(2)),

                      _todayActiviteContianer(context, responsive),
                    ],
                  ),
                ),
              ),
            ),

            LoadingOverlay(
              isLoading: state.maybeWhen(
                getTodayActivitiesLoading: () => true,
                addActivityLoading: () => true,
                startDayLoading: () => true,
                deleteActivityLoading: () => true,
                editActivityLoading: () => true,
                orElse: () => false,
              ),
            ),
          ],
        );
      },
    );
  }

  Row _appBarWidget(ResponsiveUtils responsive, BuildContext context) {
    return Row(
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
                  padding: responsive.setPadding(top: 1, right: 2),
                  child: Image.asset(ImageAsset.search),
                ),

                suffixIconConstraints: BoxConstraints(
                  maxHeight: responsive.setHeight(12),
                  maxWidth: responsive.setWidth(12),
                ),

                fillColor: ColorManger.whiteColor,

                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: responsive.setTextSize(3.5),
                  color: ColorManger.textColor,
                ),

                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorManger.secondaryTextColor.withAlpha(50),
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
    );
  }

  Row _todayActivityPriceRow(BuildContext context, ResponsiveUtils responsive) {
    return Row(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            "${context.read<HomeCubit>().getTodayActivities?.totalSpent ?? '--'}  ج",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: responsive.setTextSize(4.5),
            ),
          ),
        ),
        Spacer(),
        Text(
          "نشاطك اليومي",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontSize: responsive.setTextSize(4)),
        ),
      ],
    );
  }

  Expanded _todayActiviteContianer(
    BuildContext context,
    ResponsiveUtils responsive,
  ) {
    return Expanded(
      child: ListView.builder(
        itemCount:
            context.read<HomeCubit>().getTodayActivities?.activities?.length ??
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
              child: Slidable(
                key: ValueKey(activity?.sId),

                endActionPane: ActionPane(
                  motion: ScrollMotion(),

                  children: [
                    SizedBox(width: responsive.setWidth(2)),
                    SlidableAction(
                      borderRadius: BorderRadius.circular(
                        responsive.setBorderRadius(4),
                      ),

                      onPressed: (context) =>
                          _showDeleteDialog(context, activity!.sId!),
                      backgroundColor: Colors.red.shade400,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'حذف',
                    ),

                    SizedBox(width: responsive.setWidth(2)),
                    SlidableAction(
                      borderRadius: BorderRadius.circular(
                        responsive.setBorderRadius(4),
                      ),
                      onPressed: (context) =>
                          _showEditActivitySheet(context, activity!),

                      backgroundColor: Colors.blue.shade400,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                      label: 'تعديل',
                    ),
                  ],
                ),

                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0.1,
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      getActivityImage(activity?.type),
                      height: responsive.setHeight(5),
                    ),

                    title: Text(
                      activity?.type ?? "نشاط غير محدد",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: Text(
                      "الساعة:   ${activity?.time ?? '--'}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorManger.secondaryTextColor,
                      ),
                    ),

                    trailing: Text(
                      "${activity?.price ?? '--'} ج",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: responsive.setTextSize(3.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showEditActivitySheet(BuildContext context, TodayActivities activity) {
    final homeCubit = context.read<HomeCubit>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return BlocProvider.value(
          value: homeCubit,
          child: ActivityBottomSheet(
            activityToEdit: activity,
            isEditMode: true,
          ),
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, String id) {
    final homeCubit = context.read<HomeCubit>();

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: ColorManger.bGColor,
          title: const Text("حذف النشاط"),
          content: const Text("هل أنت متأكد أنك تريد حذف هذا النشاط؟"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text("إلغاء"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                homeCubit.fetchDeleteActivity(id);
              },
              child: const Text("حذف"),
            ),
          ],
        );
      },
    );
  }
}
