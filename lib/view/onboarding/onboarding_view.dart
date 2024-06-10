import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_router.gr.dart';

@RoutePage()
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const CartRoute()),
      child: const Scaffold(
        body: Center(
          child: Text('OnBoardingView'),
        ),
      ),
    );
  }
}