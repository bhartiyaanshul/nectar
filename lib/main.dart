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
        theme: ThemeData(
          primaryColor: const Color(0xff53B175),
          scaffoldBackgroundColor: const Color(0xffFCFCFC),
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
              fontSize: 26,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500
            ),
            labelSmall: TextStyle(
              fontSize: 14,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500,
              color: Color(0xff828282)
            )
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
