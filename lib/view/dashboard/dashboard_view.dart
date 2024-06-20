import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_router.gr.dart';

@RoutePage()
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: const Color(0xff53B175),
          currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              label: 'Shop',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.travel_explore_outlined),
            //   label: 'Explore',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_cart_outlined),
            //   label: 'Cart',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.favorite_border_outlined),
            //   label: 'Favourite',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person_outline),
            //   label: 'Account',
            // ),
          ],
        );
      },
    );
  }
}
