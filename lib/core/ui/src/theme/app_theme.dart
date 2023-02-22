import 'package:flutter/material.dart';

abstract class AppTheme {
  Color get textPrimary;
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get backgroundTextField;

  Color get line {
    return Colors.grey.shade300;
  }
}
