// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TabBarScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const TabBarScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    BannerScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const BannerScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ShippingAddressScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ShippingAddressScreenRouteArgs>(
          orElse: () =>
              ShippingAddressScreenRouteArgs(id: pathParams.getString('id')));
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ShippingAddressScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          TabBarScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        RouteConfig(
          BannerScreenRoute.name,
          path: '/banner-screen',
        ),
        RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        ),
        RouteConfig(
          ShippingAddressScreenRoute.name,
          path: '/shipping_address/:id/detail',
        ),
      ];
}

/// generated route for
/// [TabBarScreen]
class TabBarScreenRoute extends PageRouteInfo<void> {
  const TabBarScreenRoute()
      : super(
          TabBarScreenRoute.name,
          path: '/',
        );

  static const String name = 'TabBarScreenRoute';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [BannerScreen]
class BannerScreenRoute extends PageRouteInfo<void> {
  const BannerScreenRoute()
      : super(
          BannerScreenRoute.name,
          path: '/banner-screen',
        );

  static const String name = 'BannerScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [ShippingAddressScreen]
class ShippingAddressScreenRoute
    extends PageRouteInfo<ShippingAddressScreenRouteArgs> {
  ShippingAddressScreenRoute({
    Key? key,
    required String id,
  }) : super(
          ShippingAddressScreenRoute.name,
          path: '/shipping_address/:id/detail',
          args: ShippingAddressScreenRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'ShippingAddressScreenRoute';
}

class ShippingAddressScreenRouteArgs {
  const ShippingAddressScreenRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'ShippingAddressScreenRouteArgs{key: $key, id: $id}';
  }
}
