import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  final _appRouter = locator<AppRouter>();
  var selectedTab = 0;

  void _onTabTapped(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  var routes = [
    HomeRoute(),
    ExploreRoute(),
    CartRoute(),
    FavouriteRoute(),
    AccountRoute(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // routes: [
      //   HomeRoute(),
      //   const ExploreRoute(),
      //   const CartRoute(),
      //   const FavouriteRoute(),
      //   const AccountRoute(),
      // ],
      body: AutoRouter(
      ),
      bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color(0xff53B175),
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedTab,
            onTap: (index) {
              _onTabTapped(index);
              switch (index) {
                case 0:
                  _appRouter.push(HomeRoute());
                  break;
                case 1:
                  _appRouter.push(ExploreRoute());
                  break;
                case 2:
                  _appRouter.push(CartRoute());
                  break;
                case 3:
                  _appRouter.push(FavouriteRoute());
                  break;
                case 4:
                  _appRouter.push(AccountRoute());
                  break;
                default:
              }
            },
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
      // transitionBuilder: (context, child, animation) => FadeTransition(
      //   opacity: animation,
      //   child: child,
      // ),
      // bottomNavigationBuilder: (context, tabRouter) {
      //   final tabsRouter = AutoTabsRouter.of(context);  
      //   return  BottomNavigationBar(
      //       selectedItemColor: const Color(0xff53B175),
      //       type: BottomNavigationBarType.fixed,
      //       currentIndex: tabsRouter.activeIndex,
      //       onTap: (index) {
      //         tabsRouter.setActiveIndex(index);
      //       },
      //       items: const [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.storefront_outlined),
      //           label: 'Shop',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.travel_explore_outlined),
      //           label: 'Explore',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.shopping_cart_outlined),
      //           label: 'Cart',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite_border_outlined),
      //           label: 'Favourite',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.person_outline),
      //           label: 'Account',
      //         ),
      //       ],
      //     );
      // },
    );
  }
}
