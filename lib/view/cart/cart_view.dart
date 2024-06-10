import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/view/cart/cart_body.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartViewModel>();
    return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
          ),
          body: const CartBody(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'View Cart',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    const Icon(Icons.shopping_cart),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 15,
                        width: 15,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(50)),
                          color: Colors.black
                        ),
                        child: Text('${model.items.length}',style: const TextStyle(color: Colors.white,fontSize: 10),),
                      ),
                    )
                  ],
                ),
                label: 'Cart'
              ),
            ],
          ),
        );
  }
}