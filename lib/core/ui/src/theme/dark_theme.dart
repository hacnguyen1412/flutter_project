import 'package:flutter/material.dart';
import 'app_theme.dart';

class DarkTheme extends AppTheme {
  static final DarkTheme instance = DarkTheme._internal();

  DarkTheme._internal();

  @override
  final Color textPrimary = Colors.white;

  @override
  final Color backgroundPrimary = const Color.fromARGB(255, 53, 53, 65);

  @override
  final Color backgroundSecondary = const Color.fromARGB(255, 63, 63, 75);

  @override
  final Color backgroundTextField = const Color.fromARGB(255, 63, 65, 78);
}
