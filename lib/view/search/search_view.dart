import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';

@RoutePage()
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: PrimarySearchField(
                        hintText: 'Search Store',
                        prefixicon: SvgPicture.asset(
                          'assets/icons/search.svg',
                          width: 20,
                        ),
                        suffix: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/clear.svg'))),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    onTap: () {},
                    child: Material(
                      child: SvgPicture.asset('assets/icons/filter.svg'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
