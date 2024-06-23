import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/view/filter/filter_view.dart';
import 'package:nectar/view/product_gallery/product_gallery_view_model.dart';
import 'package:nectar/widget/cards/category_card.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ProductGalleryView extends StatelessWidget {
  final CategoryModel category;
  const ProductGalleryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductGalleryViewModel(category),
      builder: (context, child) {
        final model = context.watch<ProductGalleryViewModel>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                AutoRouter.of(context).maybePop();
              },
            ),
            title: Text(category.name),
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
                itemCount: model.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 250),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(ProductDetailsRoute(
                          product: model.products[index]
                      ));
                    },
                    child: ProductCard(
                        imageUrl: model.products[index].images[0],
                        productName: model.products[index].name,
                        productDesc: model.products[index].description,
                        price: model.products[index].price.toString(),
                  ));
                }),
          ));
  });
  }
}
