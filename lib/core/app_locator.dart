import 'package:get_it/get_it.dart';
import 'package:nectar/core/app_router.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(AppRouter());
}