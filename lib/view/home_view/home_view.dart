import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/service/auth_service.dart';

@RoutePage()
class HomevView extends StatelessWidget {
  HomevView({super.key});

  final _auth = locator<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // context.router.push(const CartRoute());
          },
        ),
        title: const Text('Home View'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _auth.signOut();
              context.router.replace(const OnBoardingRoute());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Home View'),
      ),
    );
  }
}