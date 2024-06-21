import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/orderaccepted.png'),
            const SizedBox(height: 20),
            Text('Order Accepted',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            Text('Your order has been accepted and is being processed',
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the home screen
              },
              child: Text('Continue Shopping'),
            ),
          ],
        ),
      ),
    );
  }
}