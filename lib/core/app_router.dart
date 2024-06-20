import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, ),
        AutoRoute(page: PhoneRoute.page),
        AutoRoute(page: CartRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: LocationRoute.page,),
        AutoRoute(page: HomeRoute.page, ),
        AutoRoute(page: ProductDetailsRoute.page,),
        AutoRoute(page: DashboardRoute.page,),
        AutoRoute(page: ExploreRoute.page,initial: true),
        AutoRoute(page: ProductGalleryRoute.page,),
        AutoRoute(page: SearchRoute.page, ),
      ];
}
