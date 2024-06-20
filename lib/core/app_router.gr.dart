// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:nectar/view/cart/cart_view.dart' as _i1;
import 'package:nectar/view/dashboard/dashboard_view.dart' as _i2;
import 'package:nectar/view/explore/explore_view.dart' as _i3;
import 'package:nectar/view/home_view/home_view.dart' as _i4;
import 'package:nectar/view/login/location_view.dart' as _i5;
import 'package:nectar/view/login/login_view.dart' as _i6;
import 'package:nectar/view/login/otp_verification_view.dart' as _i8;
import 'package:nectar/view/login/phone_view.dart' as _i9;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i7;
import 'package:nectar/view/product_details/product_details_view.dart' as _i10;
import 'package:nectar/view/product_gallery/product_gallery_view.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartView(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardView(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ExploreView(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeView(key: args.key),
      );
    },
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LocationView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginView(key: args.key),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingView(),
      );
    },
    OtpVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OtpVerificationRouteArgs>(
          orElse: () => const OtpVerificationRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OtpVerificationView(key: args.key),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PhoneView(key: args.key),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProductDetailsView(),
      );
    },
    ProductGalleryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProductGalleryView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartView]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ExploreView]
class ExploreRoute extends _i12.PageRouteInfo<void> {
  const ExploreRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeView]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<HomeRouteArgs> page =
      _i12.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LocationView]
class LocationRoute extends _i12.PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i12.PageInfo<LocationRouteArgs> page =
      _i12.PageInfo<LocationRouteArgs>(name);
}

class LocationRouteArgs {
  const LocationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.LoginView]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<LoginRouteArgs> page =
      _i12.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.OnBoardingView]
class OnBoardingRoute extends _i12.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OtpVerificationView]
class OtpVerificationRoute
    extends _i12.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          OtpVerificationRoute.name,
          args: OtpVerificationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static const _i12.PageInfo<OtpVerificationRouteArgs> page =
      _i12.PageInfo<OtpVerificationRouteArgs>(name);
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.PhoneView]
class PhoneRoute extends _i12.PageRouteInfo<PhoneRouteArgs> {
  PhoneRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PhoneRoute.name,
          args: PhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const _i12.PageInfo<PhoneRouteArgs> page =
      _i12.PageInfo<PhoneRouteArgs>(name);
}

class PhoneRouteArgs {
  const PhoneRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ProductDetailsView]
class ProductDetailsRoute extends _i12.PageRouteInfo<void> {
  const ProductDetailsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProductDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProductGalleryView]
class ProductGalleryRoute extends _i12.PageRouteInfo<void> {
  const ProductGalleryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProductGalleryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductGalleryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
