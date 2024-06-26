import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/view/favourite/favourite_view_model.dart';
import 'package:nectar/view/product_details/product_details_view_model.dart';
import 'package:nectar/widget/accordion/accordion.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/supabase_image.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return ChangeNotifierProvider(
      create: (context) => ProductDetailsViewModel(product),
      builder: (context, _) {
        final cartModel = context.watch<CartViewModel>();
        final model = context.watch<ProductDetailsViewModel>();
        return Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
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
                          itemCount: product.images.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 100,
                              child: SupabaseImage(
                                path: product.images[index],
                                height: 100,
                                fit: BoxFit.contain,
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
                      const Spacer(),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'gilroy'),
                          ),
                          Text(
                            product.brand.name,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: 'gilroy'),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () async {
                            print(model.isLiked);
                            if(model.isLiked) {
                              model.removeProductFromFavourite(product);
                            } else {
                              model.addProductToFavourite(product);
                            }
                            print(model.isLiked);;
                          },
                          icon: model.isLiked ? const Icon(Icons.favorite_rounded,
                              color: Colors.red, size: 28) :
                           const Icon(Icons.favorite_border_rounded,
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
                      onPressed: () {
                        model.decrementQuantity();
                      },
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
                            model.quantity.toString(),
                            style: const TextStyle(fontSize: 20, fontFamily: 'gilroy'),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    IconButton(
                      icon: const Icon(
                        Icons.add_rounded,
                        color: Color(0xff53B175),
                        size: 30,
                      ),
                      onPressed: () {
                        model.incrementQuantity();
                      },
                    ),
                    const Spacer(),
                    Text(
                      '\$ ${product.price}',
                      style: const TextStyle(
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Accordion(
                    title: 'Product Details',
                    content:
                        product.description,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Accordion(
                    title: 'Nuitrition',
                    content:
                        product.specifications.entries
                            .map((e) => '${e.key}: ${e.value}')
                            .join('\n'),
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
                const SizedBox(height: 10),
                PrimaryButton.primary(
                    title: 'Add To Basket',
                    onTap: () {
                      cartModel.addProductToCart(product, model.quantity);
                      print('Add to basket');
                    }),
                const SizedBox(height: 20),
              ]),
            ],
          ),
        );
      }
    );
  }
}
