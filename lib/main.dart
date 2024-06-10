import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_provider.dart';
import 'package:nectar/core/app_router.dart';

void main() {
  setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
