import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/view/filter/filter_view.dart';
import 'package:nectar/view/search/search_view_model.dart';
import 'package:nectar/widget/cards/product_card.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchViewModel(),
      builder: (context, child) {
        final model = context.watch<SearchViewModel>();
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
                          autofocus: true,
                          onChanged: (value) => model.getSearchData(value),
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
                      onTap: () {
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
                      child: Material(
                        child: SvgPicture.asset('assets/icons/filter.svg'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: GridView.builder(
                      itemCount: model.searchList.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              mainAxisExtent: 250),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            AutoRouter.of(context).push(ProductDetailsRoute(
                              product: model.searchList[index]
                            ));
                          },
                          child: ProductCard(product: model.searchList[index],),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      );
  });
  }
}
