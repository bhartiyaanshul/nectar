import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:nectar/widget/supabase_image.dart';

class FavouriteProductTile extends StatelessWidget {
  final ProductModel product;
  // final void Function()? removeProductFromCart;
  const FavouriteProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        SupabaseImage(path: product.images.first, height: 80, width: 80,fit: BoxFit.contain,),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.name, style: const TextStyle( fontSize: 16, fontFamily: 'gilroy', fontWeight: FontWeight.w500)),
            Text(product.brand.name, style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        const Spacer(),
        Text('\$ ${product.price.toString()}', style: const TextStyle( fontSize: 16, fontFamily: 'gilroy', fontWeight: FontWeight.w500) ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/arrow_right.svg', height: 20, width: 28, fit: BoxFit.contain,),
          onPressed: () {
            // removeProductFromCart;
          },
        ),
      ],),
    );
  }
}