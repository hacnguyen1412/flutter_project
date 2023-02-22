import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class AppSize {
  double get height;
  double get bodyHeight;
  double get width;
  double get statusHeight;
  double get tabBarHeight;
  double get appBarHight;
  void initialize(BuildContext context);
}

@Singleton(as: AppSize)
class AppSizeImpl extends AppSize {
  @override
  void initialize(BuildContext context) {
    if (isNotInitialize) {
      final mediaQueryData = MediaQuery.of(context);
      width = mediaQueryData.size.width;
      height = mediaQueryData.size.height;
      statusHeight = mediaQueryData.viewPadding.top;
      appBarHight = mediaQueryData.padding.top + kToolbarHeight;
      tabBarHeight = mediaQueryData.padding.bottom + kBottomNavigationBarHeight;
      bodyHeight = height - appBarHight - tabBarHeight;
    }
  }

  bool get isNotInitialize {
    return height == 0;
  }

  @override
  double appBarHight = 0;

  @override
  double height = 0;

  @override
  double statusHeight = 0;

  @override
  double tabBarHeight = 0;

  @override
  double width = 0;

  @override
  double bodyHeight = 0;
}
