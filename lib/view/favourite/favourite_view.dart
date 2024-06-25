import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/favourite/favourite_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/checkout/checkout.dart';
import 'package:nectar/widget/tile/favourite_product_tile.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {

  @override
  void initState() {
    context.read<FavouriteViewModel>().getFavouriteProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
        final model = context.watch<FavouriteViewModel>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Favourite'),
          ),
          body: Stack(children: [
                ListView.separated(
                  padding: const EdgeInsets.only(bottom: 100),
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final favProducts = model.favouriteProduct[index];
                    return FavouriteProductTile(product: favProducts);
                  },
                  itemCount: model.favouriteProduct.length,
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: PrimaryButton.primary(
                        title: 'Go to Checkout ',
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return const Checkout();
                            },
                          );
                        }),
                  ),
                ),
              ]),
        );
      }
  }
