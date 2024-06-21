import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/checkout/checkout.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('My Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Stack(children: [
        ListView(
          children: [
            ListTile(
              title: Text('Product 1',
                  style: Theme.of(context).textTheme.bodyText1),
              subtitle: Text('Price: \$100',
                  style: Theme.of(context).textTheme.bodyText2),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Product 2',
                  style: Theme.of(context).textTheme.bodyText1),
              subtitle: Text('Price: \$200',
                  style: Theme.of(context).textTheme.bodyText2),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Product 3',
                  style: Theme.of(context).textTheme.bodyText1),
              subtitle: Text('Price: \$300',
                  style: Theme.of(context).textTheme.bodyText2),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: PrimaryButton.primary(
                title: 'Go to Checkout ',
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return const Checkout();
                    },
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
