import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 370,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/icons/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          context.router.maybePop();
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.ios_share_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Name',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Product Description',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_rounded,
                        color: Color(0xff7C7C7C), size: 28))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(children: [
            IconButton(
              icon: const Icon(Icons.remove_rounded, color: Color(0xffB3B3B3),size: 30,),
              onPressed: () {},
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffE2E2E2)),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            IconButton(
              icon: const Icon(Icons.add_rounded, color: Color(0xff53B175), size: 30,),
              onPressed: () {},
            ),
          ])
          //ge.asset('assets/icons/logo.png'),
        ],
      ),
    );
  }
}
