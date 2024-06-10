import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/model/item.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    // final model = context.watch<CartViewModel>();
    return ChangeNotifierProvider(
      create:(_) => CartViewModel(),
      child: Builder(
        builder: (context) {
          final model = context.watch<CartViewModel>();
          return Scaffold(
              appBar: AppBar(
                title: const Text('Cart'),
              ),
              body: Center(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(model.items[index].name),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              model.remove(model.items[index]);
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        model.removeAll();
                      }, 
                      child: const Text('Remove All')
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  model.add(Item(name: 'Item ${model.items.length+1}'));
                },
                child: const Icon(Icons.add),
              ));
        }
      ),
    );
  }
}
