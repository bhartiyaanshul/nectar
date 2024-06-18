import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/widget/searchfield/primary_searchfield.dart';

@RoutePage()
class HomevView extends StatelessWidget {
  HomevView({super.key});

  final _auth = locator<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     // context.router.push(const CartRoute());
        //   },
        // ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.logout),
        //     onPressed: () async {
        //       await _auth.signOut();
        //       context.router.replace(const OnBoardingRoute());
        //     },
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/logo-vector.svg'),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, size: 30,color: Color(0xff4C4F4D),),
                  SizedBox(width: 8),
                  Text('Dhaka, Banassree', style: TextStyle(fontSize: 18, color: Color(0xff4C4F4D),fontWeight: FontWeight.w500, fontFamily: 'Gilroy'),),
                ],
              ),
              const SizedBox(height: 20),
              PrimarySearchField(
                hintText: 'Search Store',
                prefixicon: SvgPicture.asset('assets/icons/search.svg',width: 20,),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}