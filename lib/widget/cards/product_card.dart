import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCard extends StatelessWidget {
  final String? imageUrl;
  final String? productName;
  final String? productDesc;
  final String? price;
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.productName,
      required this.productDesc,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      width: 170,
      height: 260,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imageUrl!, width: 100, height: 80)),
          const SizedBox(height: 25),
          Text(
            productName!,
            style: const TextStyle(
                fontFamily: 'gilroy', fontSize: 16, color: Color(0xff181725)),
          ),
          const SizedBox(height: 5),
          Text(
            productDesc!,
            style: const TextStyle(
                fontFamily: 'gilroy', fontSize: 14, color: Color(0xff7C7C7C)),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "\$ $price",
                style: const TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 16,
                    color: Color(0xff181725)),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(17),
                splashColor: const Color.fromARGB(255, 41, 101, 63),
                onTap: (){
                  print('Add to cart');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff53B175),
                    borderRadius: BorderRadius.circular(17)
                  ),
                  child: const Icon(Icons.add, color: Colors.white,),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
