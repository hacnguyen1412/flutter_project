import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/features/profile/presentation/screens/profile/profile_screen.dart';
import 'package:flutter_project/features/profile/presentation/screens/shipping_address/shipping_address.dart';
import 'package:injectable/injectable.dart';
import '../../features/home/presentation/screens/banner/banner_screen.dart';
import '../../features/home/presentation/screens/home/home_screen.dart';
import '../../features/root/tab_bar_screen.dart';

part 'router.gr.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Screen,Route,App',
  routes: <AutoRoute>[
    AutoRoute(page: TabBarScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: BannerScreen),
    AutoRoute(page: ProfileScreen),
    AutoRoute(
      page: ShippingAddressScreen,
      path: '/shipping_address/:id/detail',
    ),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
