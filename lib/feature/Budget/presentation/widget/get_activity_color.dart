import 'package:flutter/material.dart';

Color getActivityColor(String? type) {
  switch (type) {
    case "حيوانات":
      return Colors.teal[300]!;
    case "معاملات نقدية":
      return Colors.teal[800]!;
    case "مواصلات":
      return Colors.orange[300]!;
    case "سفر":
      return Colors.red[300]!;
    case "التسوق":
      return Colors.green[300]!;
    case "شراء مأكولات":
      return Colors.yellow[600]!;
    default:
      return Colors.grey;
  }
}
