import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/widget/accordion/accordion.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          // Container(
          //     height: 370,
          //     decoration: const BoxDecoration(
          //       borderRadius: BorderRadius.vertical(
          //         bottom: Radius.circular(30),
          //       ),
          //       image: DecorationImage(
          //         image: AssetImage('assets/icons/logo.png'),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     child: Column(
          //       children: [
          //         const SizedBox(height: 40),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             IconButton(
          //               icon: const Icon(
          //                 Icons.arrow_back_ios_rounded,
          //                 color: Colors.black,
          //                 size: 25,
          //               ),
          //               onPressed: () {
          //                 context.router.maybePop();
          //               },
          //             ),
          //             IconButton(
          //               icon: const Icon(
          //                 Icons.ios_share_rounded,
          //                 color: Colors.black,
          //               ),
          //               onPressed: () {},
          //             ),
          //           ],
          //         ),
          //       ],
          //     )),
          Stack(children: [
            Container(
                height: 370,
                decoration: const BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  height: 200,
                  child: PageView.builder(
                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          child: Image.asset(
                            'assets/images/cococola.png',
                            height: 100,
                          ),
                        );
                      }),
                )),
            SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.min,
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
                  Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.ios_share_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              left: 170,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotWidth: 5,
                  dotHeight: 5,
                  activeDotColor: Color.fromARGB(255, 45, 144, 58),
                  dotColor: Color(0xff919191),
                ),
              ),
            ),
          ]),
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
                content:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Accordion(
                title: 'Nuitrition',
                content:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Accordion(
                title: 'Review',
                content:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
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
