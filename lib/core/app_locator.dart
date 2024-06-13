import 'package:get_it/get_it.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/core/supabase.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(AppRouter());
  locator.registerSingleton(AuthService());
}