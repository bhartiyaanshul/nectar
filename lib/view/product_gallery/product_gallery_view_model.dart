import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class ProductGalleryViewModel extends BaseViewModel{

  final _categoriesService = locator<CategoryService>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  ProductGalleryViewModel(CategoryModel category){
    getCategoryProducts(category);
  }

  void getCategoryProducts(CategoryModel category) async {
    _products = await _categoriesService.getCategoryProducts(category);
    notifyListeners();
  }
}