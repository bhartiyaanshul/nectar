import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/view/filter/filter_view.dart';
import 'package:nectar/widget/cards/category_card.dart';
import 'package:nectar/widget/cards/product_card.dart';

@RoutePage()
class ProductGalleryView extends StatelessWidget {
  const ProductGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              AutoRouter.of(context).maybePop();
            },
          ),
          title: const Text('Product Gallery'),
          actions: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/filter.svg'),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Color(0xffF2F3F2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  // backgroundColor: const Color(0xffF2F3F2),
                  useSafeArea: true,
                  context: context,
                  builder: (context) => const FilterView(),
                );
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 250),
              itemBuilder: (context, index) {
                return const ProductCard(
                    imageUrl: 'assets/images/cococola.png',
                    productName: 'productName',
                    productDesc: 'productDesc',
                    price: '100');
              }),
        ));
  }
}
