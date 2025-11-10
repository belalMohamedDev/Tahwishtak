import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tahwishtak/core/style/color/color_manger.dart';
import 'package:tahwishtak/core/style/images/asset_manger.dart';
import 'package:tahwishtak/core/utils/responsive_utils.dart';

class AddPrice extends StatefulWidget {
  const AddPrice({super.key});

  @override
  State<AddPrice> createState() => _AddPriceState();
}

class _AddPriceState extends State<AddPrice> {
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  String? selectedActivity;
  double amount = 0.0;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: responsive.setHeight(25),
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

              const Text('ضيف رصيدك'),
              const SizedBox(height: 8),
              TextFormField(
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
              SizedBox(height: responsive.setHeight(6)),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم حفظ النشاط بنجاح ✅')),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(IconlyBold.login, size: responsive.setIconSize(6)),
                    SizedBox(width: responsive.setWidth(3)),

                    Text(
                      "حفظ",
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
}
