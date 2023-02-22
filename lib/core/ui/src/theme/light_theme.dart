import 'package:flutter/material.dart';

import 'app_theme.dart';

class LightTheme extends AppTheme {
  static final LightTheme instance = LightTheme._internal();

  LightTheme._internal();

  @override
  final Color textPrimary = Colors.black;

  @override
  final Color backgroundPrimary = Colors.white;

  @override
  final Color backgroundSecondary = Colors.grey.shade300;

  @override
  final Color backgroundTextField = Colors.grey.shade200;
}
