import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Image.asset('assets/images/orderaccepted.png'),
            const SizedBox(height: 60),
            Text('Your Order has been\naccepted',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,),
            const SizedBox(height: 20),
            Text('Your items has been placed and is on\nits way to being processed.',
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,),
            const SizedBox(height: 120),
            PrimaryButton.primary(title: 'Track Order', onTap: (){}),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: PrimaryButton.icon(title: 'Back To Home', textColor: Colors.black ,color: Colors.transparent, onTap: (){
                AutoRouter.of(context).maybePop();
              }),
            )
          ],
        ),
      ),
    );
  }
}