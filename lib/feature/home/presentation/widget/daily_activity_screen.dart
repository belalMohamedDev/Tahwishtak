import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';
import 'package:tahwishtak/feature/home/data/model/today_activities_model.dart';
import 'package:tahwishtak/feature/home/logic/home_cubit.dart';

class ActivityBottomSheet extends StatefulWidget {
  final TodayActivities? activityToEdit;
  final bool isEditMode;

  const ActivityBottomSheet({
    super.key,
    this.activityToEdit,
    this.isEditMode = false,
  });

  @override
  State<ActivityBottomSheet> createState() => _ActivityBottomSheetState();
}

class _ActivityBottomSheetState extends State<ActivityBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  String? selectedActivity;
  double amount = 0.0;

  final List<String> activities = [
    "حيوانات",
    "معاملات نقدية",
    "مواصلات",
    "سفر",
    "التسوق",
    "شراء مأكولات",
  ];

  @override
  void initState() {
    super.initState();

    if (widget.isEditMode && widget.activityToEdit != null) {
      selectedActivity = widget.activityToEdit!.type;
      amount = widget.activityToEdit!.price!;
    } else {
      selectedDate = DateTime.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: responsive.setHeight(20),
        left: responsive.setWidth(4),
        right: responsive.setWidth(4),
      ),
      padding: EdgeInsets.only(
        left: responsive.setWidth(4),
        right: responsive.setWidth(4),
        top: 25,
        bottom: responsive.setHeight(2),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(responsive.setBorderRadius(6)),
          bottom: Radius.circular(responsive.setBorderRadius(6)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 15,
            offset: const Offset(0, -4),
          ),
        ],
        image: const DecorationImage(
          image: AssetImage(ImageAsset.bottomBackground),
          fit: BoxFit.cover,
          opacity: 0.08,
        ),
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'نشاطك اليومي',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),

              const Text('تاريخ اليوم'),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: ColorManger.secondaryTextColor),
                ),
              ),
              const SizedBox(height: 20),

              const Text('نشاطك'),
              const SizedBox(height: 8),
              _toDayActives(responsive),
              const SizedBox(height: 20),

              const Text('المبلغ'),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: amount == 0 ? "" : amount.toString(),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.attach_money),
                  hintText: '0.000 ج',

                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (value) => amount = double.tryParse(value) ?? 0.0,
              ),
              SizedBox(height: responsive.setHeight(15)),

              ElevatedButton(
                onPressed: () {
                  if (widget.isEditMode) {
                    context.read<HomeCubit>().fetchEditActivity(
                      widget.activityToEdit!.sId!,
                      selectedActivity!,
                      amount,
                    );
                  } else {
                    context.read<HomeCubit>().fetchAddActivity(
                      selectedActivity!,
                      amount,
                    );
                  }

                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(IconlyBold.login, size: responsive.setIconSize(6)),
                    SizedBox(width: responsive.setWidth(3)),

                    Text(
                      widget.isEditMode ? "حفظ التعديل" : "حفظ",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: responsive.setTextSize(3.8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Directionality _toDayActives(ResponsiveUtils responsive) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(responsive.setBorderRadius(6)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
        hint: const Text('اختار نشاطك'),
        value: selectedActivity,
        onChanged: (value) => setState(() => selectedActivity = value),
        items: activities.map((activity) {
          return DropdownMenuItem<String>(
            value: activity,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                margin: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: activity == selectedActivity
                      ? Colors.teal.withValues(alpha: 0.15)
                      : Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.teal.shade400,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      activity,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
