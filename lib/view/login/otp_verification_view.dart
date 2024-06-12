import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
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
          onPressed: () {},
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
                child: TextFormField(
                  maxLength: 4,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  cursorColor: const Color(0xff7C7C7C),
                  style: const TextStyle(
                    fontFamily: 'Gilroy-normal',
                    fontSize: 18,
                    color: Color(0xff030303),
                  ),
                  decoration: const InputDecoration(
                    hintText: '- - - -',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                ))
            // Wrap(
            //   alignment: WrapAlignment.start,
            //   spacing: 4,
            //   direction: Axis.horizontal,
            //   runSpacing: 10,
            //   children: [
            //     _otpTextField(context, true),
            //     _otpTextField(context, false),
            //     _otpTextField(context, false),
            //     _otpTextField(context, false),
            //   ],
            // ),
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
              onPressed: () {
                if (_fromKey.currentState?.validate() ?? false) {
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

  // Widget _otpTextField(BuildContext context, bool autoFocus) {
  //   return SizedBox(
  //     height: MediaQuery.of(context).size.shortestSide * 0.13,
  //     child: AspectRatio(
  //       aspectRatio: 1,
  //       child: TextFormField(
  //         autofocus: autoFocus,
  //         decoration: const InputDecoration(
  //           hintText: '-',
  //           enabledBorder: UnderlineInputBorder(
  //             borderSide: BorderSide(color: Color(0xffE2E2E2)),
  //           ),
  //           focusedBorder: UnderlineInputBorder(
  //             borderSide: BorderSide(color: Color(0xffE2E2E2)),
  //           ),
  //           border: UnderlineInputBorder()
  //         ),
  //         textAlign: TextAlign.center,
  //         keyboardType: TextInputType.number,
  //         style: const TextStyle(),
  //         maxLines: 1,
  //         onChanged: (value) {
  //           if (value.isNotEmpty) {
  //             FocusScope.of(context).nextFocus();
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }
}
