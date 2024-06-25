import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class SearchViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  List<ProductModel> _searchList = [];
  List<ProductModel> get searchList => _searchList;

  SearchViewModel(){
    getProducts();
  }

  void getSearchData(String search) async {
    _searchList = await _productService.getProductsBySearch(search);
    notifyListeners();
  }

  void getProducts() async {
    _searchList = await _productService.getProducts();
    notifyListeners();
  }
}