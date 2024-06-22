import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widget/button/primary_button.dart';

class OrderFailedAlertBox extends StatelessWidget {
  const OrderFailedAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              AutoRouter.of(context).maybePop();
            }, icon: const Icon(Icons.close, color: Colors.black, size: 30,), alignment: Alignment.topLeft,),
            Image.asset('assets/images/orderfailed.png',),
            const SizedBox(height: 20),
            Text('Oops! Order Failed', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: 20),
            const Text('Something went wrong', textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
            const SizedBox(height: 20),
            PrimaryButton.primary(title: 'Please Try Again', onTap: (){}),
            PrimaryButton.icon(title: 'Back To Home', textColor: Colors.black ,color: Colors.transparent, onTap: (){
              AutoRouter.of(context).maybePop();
            }),
          ],
        
        ),
      ),
    );
    // return Container(
    //   height: 100,
    //   color: Colors.white,
    //   child: Column(children: [
    //     // const Text('Order Failed'),
    //     const Text('Your order has failed to process. Please try again.'),
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: const Text('OK'),
    //     ),  
    //   ],),
    // );
    // return AlertDialog(
    //   // shape: RoundedRectangleBorder(
    //   //   borderRadius: BorderRadius.circular(20),
    //   // ),

    //   backgroundColor: Colors.white,
    //   icon: const Icon(Icons.close,),
    //   alignment: Alignment.center,
    //   title: Image.asset('assets/images/orderfailed.png'),
    //   content: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Text('Oops! Order Failed', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
    //       const SizedBox(height: 20),
    //       const Text('Something went wrong', textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
    //     ],
    //   ) ,
    //   actions: [
    //     PrimaryButton.primary(title: 'Please Try Again', onTap: (){}),
    //     PrimaryButton.icon(title: 'Back To Home', textColor: Colors.black ,color: Colors.transparent, onTap: (){
    //       AutoRouter.of(context).maybePop();
    //     }),
    //   ],
    // );
  }
}