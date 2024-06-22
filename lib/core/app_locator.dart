import 'package:get_it/get_it.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/view/home_view/home_view_model.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(AppRouter());
  locator.registerSingleton(AuthService());
  locator.registerSingleton(ProductService());
  locator.registerSingleton(HomeViewModel());
}