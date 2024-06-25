import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/card_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/cart_service.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class ProductDetailsViewModel extends BaseViewModel{

  final _cartService = locator<CartService>();

  int _quantity = 1;
  int get quantity => _quantity;

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

  
}