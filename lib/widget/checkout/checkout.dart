import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/order/order_failed_alertbox.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 570,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Checkout',
                    style: Theme.of(context).textTheme.headlineMedium),
                const Icon(Icons.close),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(),
          ListTile(
            title: Text('Delivery'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Select Method'),
                const SizedBox(width: 10),
                SvgPicture.asset('assets/icons/arrow_right.svg')
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Payment'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset('assets/icons/cardicon.svg'),
                const SizedBox(width: 10),
                SvgPicture.asset('assets/icons/arrow_right.svg')
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Promo Code'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Pick Discount'),
                const SizedBox(width: 10),
                SvgPicture.asset('assets/icons/arrow_right.svg')
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Total Cost'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('\$100'),
                const SizedBox(width: 10),
                SvgPicture.asset('assets/icons/arrow_right.svg')
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('By placing an order you agree to our',
                    style: Theme.of(context).textTheme.labelSmall),
                RichText(
                    text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                            fontFamily: 'gilroy', color: Color(0xff181725))),
                    TextSpan(
                        text: ' and ',
                        style: TextStyle(
                            fontFamily: 'gilroy', color: Color(0xff7C7C7C))),
                    TextSpan(
                        text: 'conditions',
                        style: TextStyle(
                            fontFamily: 'gilroy', color: Color(0xff181725)))
                  ],
                )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: PrimaryButton.primary(
              title: 'Place Order',
              onTap: () {
                // context.router.push(const OrderAcceptedRoute());
                showDialog(context: context, builder: (context) => const OrderFailedAlertBox());
                // showAboutDialog(context: context, children: const [
                //   OrderFailedAlertBox(),
                // ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
