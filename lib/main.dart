import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_provider.dart';
import 'package:nectar/core/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://dxbfneyqkwbswxshogoy.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR4YmZuZXlxa3dic3d4c2hvZ295Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNTY5OTUsImV4cCI6MjAzMzgzMjk5NX0.CkJPBVnPS7YZJzEA6vwVa2_tD57FQ07GCrYw0UTIqdg',
  );
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
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xff53B175),
          ),
          primaryColor: const Color(0xff53B175),
          scaffoldBackgroundColor: const Color(0xffFCFCFC),
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
              fontSize: 26,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500
            ),
            labelMedium: TextStyle(
              fontSize: 16,
              fontFamily: 'Gilroy',
              // fontWeight: FontWeight.normal,
              color: Color(0xff7C7C7C)
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
