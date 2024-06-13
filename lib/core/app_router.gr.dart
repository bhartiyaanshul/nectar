// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:nectar/view/cart/cart_view.dart' as _i1;
import 'package:nectar/view/login/location_view.dart' as _i2;
import 'package:nectar/view/login/login_view.dart' as _i3;
import 'package:nectar/view/login/otp_verification_view.dart' as _i5;
import 'package:nectar/view/login/phone_view.dart' as _i6;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i4;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartView(),
      );
    },
    LocationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LocationView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OnBoardingView(),
      );
    },
    OtpVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OtpVerificationRouteArgs>(
          orElse: () => const OtpVerificationRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.OtpVerificationView(key: args.key),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PhoneView(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CartView]
class CartRoute extends _i7.PageRouteInfo<void> {
  const CartRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LocationView]
class LocationRoute extends _i7.PageRouteInfo<void> {
  const LocationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnBoardingView]
class OnBoardingRoute extends _i7.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OtpVerificationView]
class OtpVerificationRoute extends _i7.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OtpVerificationRoute.name,
          args: OtpVerificationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static const _i7.PageInfo<OtpVerificationRouteArgs> page =
      _i7.PageInfo<OtpVerificationRouteArgs>(name);
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PhoneView]
class PhoneRoute extends _i7.PageRouteInfo<PhoneRouteArgs> {
  PhoneRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PhoneRoute.name,
          args: PhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const _i7.PageInfo<PhoneRouteArgs> page =
      _i7.PageInfo<PhoneRouteArgs>(name);
}

class PhoneRouteArgs {
  const PhoneRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'PhoneRouteArgs{key: $key}';
  }
}
