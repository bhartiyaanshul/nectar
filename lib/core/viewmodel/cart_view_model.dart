import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/card_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/cart_service.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';
import 'dart:developer';

class CartViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _cartService = locator<CartService>(); 

  List<CartModel> _products = [];
  List<CartModel> get products => _products;
  // List<ProductModel> _products = [];
  // List<ProductModel> get products => _products;

  CartViewModel() {
    getCartProducts();
  }

  Future<void> addProductToCart(ProductModel product, int quantity) async {
    print('Adding product to cart...');
    await _cartService.addProductToCart(product, quantity);
    getCartProducts();
  }

  void getCartProducts() async {
    print('Getting cart products...');
    _products = await _cartService.getCartProducts();
    // log(_products.toString());
    notifyListeners();
  }

  void removeProductFromCart(ProductModel product) {
    print('Removing product from cart...');
    _cartService.removeProductFromCart(product.id);
    getCartProducts();
  }

}