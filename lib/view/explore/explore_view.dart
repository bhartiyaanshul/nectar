import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/widget/cards/category_card.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';

@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Text(
                textAlign: TextAlign.center,
                'Find Products',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff181725),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gilroy'),
              ),
              const SizedBox(height: 20),
              PrimarySearchField(
                onTap: (){
                  context.router.push(const SearchRoute());
                },
                hintText: 'Search Store',
                prefixicon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 20,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            mainAxisExtent: 190),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.router.push(const ProductGalleryRoute());
                        },
                        child: CategoryCard.vertical(
                            color: Colors.primaries[index],
                            imageUrl: 'assets/icons/logo.png',
                            categoryName: 'Fruits & vegitables'),
                      );
                    }),
              )
          
              // CategoryCard(
              //     imageUrl: 'assets/icons/logo.png', categoryName: 'Fruits'),
            ],
          ),
        ),
      ),
    );
  }
}
