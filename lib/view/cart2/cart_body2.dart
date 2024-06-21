
// import 'package:flutter/material.dart';
// import 'package:nectar/core/model/item.dart';
// import 'package:nectar/core/viewmodel/cart_view_model.dart';
// import 'package:provider/provider.dart';

// class CartBody extends StatelessWidget {
//   const CartBody({
//     super.key
//   });


//   @override
//   Widget build(BuildContext context) {
//   final model = context.watch<CartViewModel>();
//     return Center(
//       child: Column(
//         children: [
//           ListView.builder(
//             shrinkWrap: true,
//             itemCount: model.items.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(model.items[index].name),
//                 trailing: IconButton(
//                   icon: const Icon(Icons.remove),
//                   onPressed: () {
//                     model.remove(model.items[index]);
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             title: const Text('Total Price'),
//             trailing: Text('${model.totalPrice}'),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     model.add(Item(name: 'Item ${model.items.length + 1}'));
//                   },
//                   child: const Text('Add')),
//               const SizedBox(width: 20,),
//               ElevatedButton(
//                   onPressed: () {
//                     model.removeAll();
//                   },
//                   child: const Text('Remove All')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
