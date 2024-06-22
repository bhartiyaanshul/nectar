import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final  _productService = locator<ProductService>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  HomeViewModel() {
    getProducts();
  }

  void getProducts() async {
    print('Getting products...');
    _products = await _productService.getProducts();
    // print(_products.toString());
    notifyListeners();
  }
}