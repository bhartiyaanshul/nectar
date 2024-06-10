// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:nectar/view/cart/cart_view.dart' as _i1;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartView(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnBoardingView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartView]
class CartRoute extends _i3.PageRouteInfo<void> {
  const CartRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnBoardingView]
class OnBoardingRoute extends _i3.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
