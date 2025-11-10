import 'package:flutter/material.dart';

IconData getActivityIcon(String? type) {
  switch (type) {
    case "حيوانات":
      return Icons.pets;
    case "معاملات نقدية":
      return Icons.attach_money;
    case "مواصلات":
      return Icons.directions_bus;
    case "سفر":
      return Icons.flight;
    case "التسوق":
      return Icons.shopping_bag_rounded;
    case "شراء مأكولات":
      return Icons.fastfood;
    default:
      return Icons.help_outline; 
  }
}
