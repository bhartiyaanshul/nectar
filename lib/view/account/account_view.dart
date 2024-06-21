import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/logo.png'),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Afsar Hossen',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff181725),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Gilroy'),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.edit_outlined, size: 25, color: Color(0xff53B175), ),
                      ],
                    ),
                    Text('Imshuvo97@gmail.com', style: TextStyle(color: Color(0xff7C7C7C), fontSize: 16),)
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/ordersicon.svg', width: 25),
            title: const Text('Orders', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/mydetails.svg', width: 25),
            title: const Text('My Details', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/delivery.svg', width: 25),
            title: const Text('Delivery Address', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/payment.svg', width: 25),
            title: const Text('Payments Methods', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/promocode.svg', width: 25),
            title: const Text('Promo Code', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/Bell.svg', width: 25),
            title: const Text('Notifications', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/help.svg', width: 25),
            title: const Text('Help', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/icons/about.svg', width: 25),
            title: const Text('About', style: TextStyle(fontSize: 18, color: Color(0xff181725), fontFamily: 'Gilroy'),),
            trailing: SvgPicture.asset('assets/icons/arrow_right.svg', width: 10),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: PrimaryButton.icon(title: 'Log Out', color: const Color(0xffF2F3F2), onTap: (){}, textColor: const Color(0xff53B175),icon: const Icon(Icons.logout, color: Color(0xff53B175),),),
          ),
          const SizedBox(height: 25),
        ],
      ),
    )));
  }
}
