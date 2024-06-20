import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widget/accordion/accordion.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
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
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'gilroy'),
                      ),
                      Text(
                        'Product Description',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'gilroy'),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 25, 0),
              child: Row(children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove_rounded,
                    color: Color(0xffB3B3B3),
                    size: 30,
                  ),
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
                        style: TextStyle(fontSize: 20, fontFamily: 'gilroy'),
                        textAlign: TextAlign.center,
                      ),
                    )),
                IconButton(
                  icon: const Icon(
                    Icons.add_rounded,
                    color: Color(0xff53B175),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                const Spacer(),
                const Text(
                  '\$ 100',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w500),
                ),
                
                
              ]),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Accordion(
                title: 'Product Details',
                content: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Accordion(
                title: 'Nuitrition',
                content: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Accordion(
                title: 'Review',
                content: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              ),
            ),
            // ExpansionPanel(
            //   body: ListTile(
            //     title: Text(
            //       'Product Details',
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontFamily: 'gilroy',
            //           fontWeight: FontWeight.w500),
            //     ),
            //   ),
            //   headerBuilder: (context, isExpanded) {
            //     return ListTile(
            //       title: Text(
            //         'Product Details',
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontFamily: 'gilroy',
            //             fontWeight: FontWeight.w500),
            //       ),
            //     );
            //   },
            // ),
            const SizedBox(height: 10),
            PrimaryButton.primary(
                title: 'Add To Basket',
                onTap: () {
                  print('Add to basket');
                }),
            const SizedBox(height: 20),
          ]),
        ],
      ),
    );
  }
}
