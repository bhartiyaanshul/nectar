import 'dart:isolate';
import 'dart:math';

import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/card_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/cart_service.dart';
import 'package:nectar/core/service/favourite_service.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class ProductDetailsViewModel extends BaseViewModel{

  final _cartService = locator<CartService>();
  final _favouriteService = locator<FavouriteService>();

  int _quantity = 1;
  int get quantity => _quantity;

  bool _isLiked = false;
  bool get isLiked => _isLiked;

  ProductDetailsViewModel(ProductModel product){
    getLikedProduct(product);
  }

  void incrementQuantity(){
    _quantity++;
    notifyListeners();
  }

  void decrementQuantity(){
    if(_quantity > 1){
      _quantity--;
      notifyListeners();
    }
  }

  void addProductToFavourite(ProductModel product) {
    print(product.toString());
    _isLiked = !_isLiked;
    _favouriteService.addProductToFavourite(product);
    print('Adding product to favourite...');
    notifyListeners();
    // Add product to favourite
  }

  void removeProductFromFavourite(ProductModel product) {
    print('Removing product from favourite...');
    _isLiked = !_isLiked;
    _favouriteService.removeProductFromFavourite(product.id);
    notifyListeners();
  }

  Future<void> getLikedProduct(ProductModel product) async {
    _isLiked = await _favouriteService.isLiked(product.id);
    notifyListeners();
  }

  
}