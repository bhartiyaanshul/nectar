import 'package:auto_route/auto_route.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/view/login/login_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginViewModel(),
        builder: (context, _) {
          final model = context.watch<LoginViewModel>();
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/login_image.png'),
                      alignment: Alignment.topCenter)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Get your groceries\nwith Nectar',
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 20),
                    TextField(
                      cursorColor: const Color(0xff7C7C7C),
                      decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE2E2E2)),
                          ),
                          prefixIcon: GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                showPhoneCode: false,
                                onSelect: (Country country) {
                                  model.setCountry(country);
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  model.country?.flagEmoji ?? '🇮🇳',
                                  style: const TextStyle(fontSize: 22),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '+${model.country?.phoneCode ?? '91'}',
                                  style: const TextStyle(
                                      fontFamily: 'Gilroy-normal',
                                      fontSize: 18,
                                      color: Color(0xff030303)),
                                ),
                                const SizedBox(width: 5),
                              ],
                            ),
                          )),
                      controller: model.phoneController,
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
                      color: '0xff5383EC',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryButton.icon(
                        title: 'Continue with facebook',
                        icon: SvgPicture.asset('assets/icons/facebook.svg'),
                        color: '0xff4A66AC',
                        onTap: () {}),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
