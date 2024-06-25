import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/checkout/checkout.dart';
import 'package:nectar/widget/tile/cart_product_tile.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartViewModel>();
    return Scaffold(
          appBar: AppBar(
            title:
                Text('My Cart', style: Theme.of(context).textTheme.headlineMedium),
          ),
          body: Stack(children: [
            ListView.separated(
              padding: const EdgeInsets.only(bottom: 100),
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final cartProduct = model.products[index];
                return CartProductTile(cartProduct: cartProduct,
                removeProductFromCart: (){
                  model.removeProductFromCart(cartProduct.product);
                });
              },
              itemCount: model.products.length,
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
