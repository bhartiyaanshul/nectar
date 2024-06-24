import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/widget/supabase_image.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final void Function()? onTap;
  const ProductCard({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    // final baseUrl =
    //     'https://dxbfneyqkwbswxshogoy.supabase.co/storage/v1/object/public/content/';
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE2E2E2)),
            // color: Colors.white,
          ),
          width: 170,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Center(
                      child: SupabaseImage(path: product.images.first, height: 90))),
              const SizedBox(height: 25),
              Text(
                product.name,
                style: const TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 16,
                    color: Color(0xff181725)),
              ),
              const SizedBox(height: 5),
              Text(
                product.brand.name,
                style: const TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 14,
                    color: Color(0xff7C7C7C)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "\$ ${product.price}",
                    style: const TextStyle(
                        fontFamily: 'gilroy',
                        fontSize: 16,
                        color: Color(0xff181725)),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(17),
                    splashColor: const Color.fromARGB(255, 41, 101, 63),
                    onTap: () {
                      print('Add to cart');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xff53B175),
                          borderRadius: BorderRadius.circular(17)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
