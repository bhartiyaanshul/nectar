import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/onbording.png'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Material(
              color: Colors.transparent,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/icons/logo-transparent.png',
                        height: 60,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Welcome\nto our store',
                        style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Ger your groceries in as fast as one hour',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xffFCFCFC).withOpacity(0.7),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      PrimaryButton.primary(
                        title: 'Get Started',
                        onTap: () {
                          context.pushRoute(const LoginRoute());
                        },
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}
