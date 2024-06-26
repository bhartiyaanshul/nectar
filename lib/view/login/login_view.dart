import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _auth = locator<AuthService>();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login_image.png'),
                alignment: Alignment.topCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 380),
                Text('Get your groceries\nwith Nectar',
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 20),
                TextField(
                  autofocus: false,
                  readOnly: true,
                  style: const TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 18,
                      color: Color(0xff030303)),
                  onTap: () {
                    model.navigateToPhone();
                  },
                  cursorColor: const Color(0xff7C7C7C),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '🇮🇳',
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(width: 12),
                        Text(
                          '+91',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 18,
                              color: Color(0xff030303)),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                    child: Text(
                  'or connect with social media',
                  style: Theme.of(context).textTheme.labelSmall,
                )),
                const SizedBox(height: 40),
                PrimaryButton.icon(
                  title: 'Continue with google',
                  icon: SvgPicture.asset('assets/icons/google.svg'),
                  color: const Color(0xff5383EC),
                  onTap: () async {
                    await _auth.googleSignIn();
                    model.navigateToLocation();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton.icon(
                    title: 'Continue with facebook',
                    icon: SvgPicture.asset('assets/icons/facebook.svg'),
                    color: const Color(0xff4A66AC),
                    onTap: () async {
                      await _auth.signOut();
                      // await _auth.signInWithDiscord();
                    }),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton.icon(
                    title: 'Continue with Discord',
                    // icon: Image.asset('assets/icons/discord-logo-png.png'),
                    color: const Color(0xff4A66AC),
                    onTap: () async {
                      // await _auth.signOut();
                      await _auth.signInWithDiscord();
                    }),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
