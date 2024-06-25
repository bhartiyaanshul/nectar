import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/model/card_model.dart';
import 'package:nectar/widget/supabase_image.dart';

class CartProductTile extends StatelessWidget {
  // final String path;
  final CartModel cartProduct;
  final void Function()? removeProductFromCart;
  const CartProductTile({super.key, required this.cartProduct, this.removeProductFromCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
        SupabaseImage(path: cartProduct.product.images.first, height: 100, width: 80,fit: BoxFit.contain,),
        const SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartProduct.product.name, style: const TextStyle( fontSize: 16, fontFamily: 'gilroy', fontWeight: FontWeight.w500)),
                      Text(cartProduct.product.brand.name, style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: removeProductFromCart,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                      Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            // model.decrementQuantity();
                          },
                          child: const Icon(
                            Icons.remove_rounded,
                            color: Color(0xffB3B3B3),
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xffE2E2E2)),
                          ),
                          child: Center(
                            child: Text(
                              cartProduct.quantity.toString(),
                              style: const TextStyle(fontSize: 20, fontFamily: 'gilroy'),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            // model.decrementQuantity();
                          },
                          child: const Icon(
                            Icons.add_rounded,
                          color: Color(0xff53B175),
                          size: 30,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$ ${cartProduct.product.price}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'gilroy',
                            fontWeight: FontWeight.w500),
                      ),
                    ]),
            ],
          ),
        ),


      ],)
    );
  }
}