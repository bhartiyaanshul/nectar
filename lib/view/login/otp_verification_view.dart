import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/textfield/primary_textfield.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OtpVerificationView extends StatelessWidget {
  OtpVerificationView({super.key});

  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            context.router.maybePop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Text('Enter your 4-digit code',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 26),
            Text(
              'Code',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 10),
            Form(
                key: _fromKey,
                child: PrimaryTextField(
                  onChanged: model.setOTP,
                  maxLength: 4,
                  keyboardType: TextInputType.phone,
                  hintText: '- - - -',
                ))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text('Resend code',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontFamily: 'Gilroy-normal',
                        fontSize: 18,
                        fontWeight: FontWeight.w500))),
            FloatingActionButton(
              elevation: 0,
              onPressed: () async {
                if (_fromKey.currentState?.validate() ?? false) {
                  // await model.verifyOtp();
                  model.navigateToLocation();
                  print('Validated');
                }
              },
              shape: const CircleBorder(),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
