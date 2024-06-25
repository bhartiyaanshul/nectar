import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/favourite/favourite_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/checkout/checkout.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteViewModel(),
      builder: (context,_) {
        final model = context.watch<FavouriteViewModel>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Favourite'),
          ),
          body: Stack(children: [
                ListView.separated(
                  padding: const EdgeInsets.only(bottom: 100),
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    // final cartProduct = model.products[index];
                    // return CartProductTile(cartProduct: cartProduct);
                  },
                  itemCount: 1,
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
    );
  }
}