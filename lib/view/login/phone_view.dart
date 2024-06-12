import 'package:auto_route/auto_route.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class PhoneView extends StatelessWidget {
  PhoneView({super.key});

  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Text('Enter your phone number',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 26),
            Text(
              'Mobile Number',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 10),
            Form(
                key: _fromKey,
                child: TextFormField(
                  validator: model.validateContactNumber,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  cursorColor: const Color(0xff7C7C7C),
                  style: const TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 18,
                      color: Color(0xff030303)),
                  controller: model.phoneController,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE2E2E2)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE2E2E2)),
                      ),
                      prefix: GestureDetector(
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              model.country?.flagEmoji ?? '🇮🇳',
                              style: const TextStyle(fontSize: 22),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '+${model.country?.phoneCode ?? '91'}',
                              style: const TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 18,
                                  color: Color(0xff030303)),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      )),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_fromKey.currentState?.validate() ?? false) {
            model.navigateToOtpVerification();
            print('Validated');
          }
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
