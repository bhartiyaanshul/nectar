import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/view/home_view/home_view_model.dart';
import 'package:nectar/widget/cards/category_card.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  HomeView({super.key});
  final _auth = locator<AuthService>();
  int length = 3;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        builder: (context, child) {
          final model = context.watch<HomeViewModel>();
          // print(model.products);
          // print(model.categories.length);
          // print(model.categories);
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
                            style:
                                TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
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
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.products.length,
                      itemBuilder: (_, i) {
                        return Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              context.router.push(const ProductDetailsRoute());
                            },
                            child: ProductCard(
                                imageUrl: model.products[i].images[0],
                                productName: model.products[i].name,
                                productDesc: model.products[i].description,
                                price: model.products[i].price.toString()),
                          ),
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
                            style:
                                TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
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
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.products.length,
                      itemBuilder: (_, i) {
                        return Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              context.router.push(const ProductDetailsRoute());
                            },
                            child: ProductCard(
                                imageUrl: model.products[i].images[0],
                                productName: model.products[i].name,
                                productDesc: model.products[i].description,
                                price: model.products[i].price.toString()),
                          ),
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
                            style:
                                TextStyle(fontSize: 24, fontFamily: 'Gilroy')),
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
                    height: 115,
                    child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 15,
                            ),
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        itemCount: model.categories.length,
                        itemBuilder: (_, i) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: CategoryCard.horizontal(
                                imageUrl: model.categories[i].image,
                                categoryName: model.categories[i].name,
                                color: Colors.primaries[i % Colors.primaries.length]),
                          );
                        }),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 260,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.products.length,
                      itemBuilder: (_, i) {
                        return Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              context.router.push(const ProductDetailsRoute());
                            },
                            child: ProductCard(
                                imageUrl: model.products[i].images[0],
                                productName: model.products[i].name,
                                productDesc: model.products[i].description,
                                price: model.products[i].price.toString()),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        });
  }
}
