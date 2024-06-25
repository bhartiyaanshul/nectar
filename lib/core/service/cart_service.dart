import 'package:nectar/core/model/card_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';
import 'dart:developer';

class CartService{


  Future<void> addProductToCart(ProductModel product, int quantity) async {
    final res = await supabase.from('user_cart').upsert({
      'product_id': product.id,
      'quantity': quantity,
      'user_id': supabase.auth.currentUser!.id,
    });
    print('Adding product to cart... product_service.dart');
    // Add product to cart
    getCartProducts();
  }

  Future<List<CartModel>> getCartProducts() async {
    print('Getting cart products... product_service.dart');
    // Fetch cart products from API
    final products = await supabase.from('user_cart').select('*, product(*, brand(*), category(*))').eq('user_id', supabase.auth.currentUser!.id);
    if(products.isEmpty){
      log("No products found or Unknown error");
      return [];
    }
    log(products.toString());
    return products.map((product) => CartModel.fromMap(product)).toList();
  }

  Future<void> removeProductFromCart(int productId) async {
    final res = await supabase.from('user_cart').delete().eq('product_id', productId).eq('user_id', supabase.auth.currentUser!.id);
    print('Removing product from cart... product_service.dart');
    // Remove product from cart
  }

}