import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomevView extends StatelessWidget {
  HomevView({super.key});

  final _auth = locator<AuthService>();

  final controller = PageController();
  int length = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            SvgPicture.asset('assets/icons/logo-vector.svg'),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30,
                  color: Color(0xff4C4F4D),
                ),
                SizedBox(width: 8),
                Text(
                  'Dhaka, Banassree',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4C4F4D),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Gilroy'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PrimarySearchField(
                hintText: 'Search Store',
                prefixicon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 115,
              child: Stack(
                children: [
                  PageView.builder(
                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (_, i) {
                        return Image.asset('assets/images/banner.png');
                      }),
                  Positioned(
                    bottom: 15,
                    left: 170,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: length,
                      effect: const ExpandingDotsEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotColor: Color.fromARGB(255, 45, 144, 58),
                        dotColor: Color(0xff919191),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text('Exclusive Offer',
                      style: TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
                  const Spacer(),
                  InkWell(
                    child: TextButton(
                      child: const Text('See all',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 16,
                              color: Color(0xff53B175))),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (_, i) {
                  return const Row(
                    children: [
                      ProductCard(
                          imageUrl: 'assets/icons/logo.png',
                          productName: 'Product Name',
                          productDesc: 'Product Description',
                          price: '500'),
                      SizedBox(width: 12),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text('Best Selling',
                      style: TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
                  const Spacer(),
                  InkWell(
                    child: TextButton(
                      child: const Text('See all',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 16,
                              color: Color(0xff53B175))),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (_, i) {
                  return const Row(
                    children: [
                      ProductCard(
                          imageUrl: 'assets/icons/logo.png',
                          productName: 'Product Name',
                          productDesc: 'Product Description',
                          price: '500'),
                      SizedBox(width: 12),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text('Groceries',
                      style: TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
                  const Spacer(),
                  InkWell(
                    child: TextButton(
                      child: const Text('See all',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 16,
                              color: Color(0xff53B175))),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                height: 115,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    itemCount: 2,
                    itemBuilder: (_, i) {
                      return Image.asset('assets/images/Grains${i + 1}.png');
                    }),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 260,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (_, i) {
                  return const Row(
                    children: [
                      ProductCard(
                          imageUrl: 'assets/icons/logo.png',
                          productName: 'Product Name',
                          productDesc: 'Product Description',
                          price: '500'),
                      SizedBox(width: 12),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff53B175),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
