import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _categoryService = locator<CategoryService>();
  final _appRouter = locator<AppRouter>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  HomeViewModel() {
    getProducts();
    getCategories();
  }


  void getProducts() async {
    print('Getting products...');
    _products = await _productService.getProducts();
    // print(_products.toString());
    notifyListeners();
  }

  void getCategories() async {
    _categories = await _categoryService.getCategories();
    print(_categories.toString());
    notifyListeners();
  }

  void nagivateToProductDetails(ProductModel product) {
    _appRouter.push(ProductDetailsRoute(product: product));
    print('Navigating to product details...');
  }

  void navigateToProductGallery(CategoryModel category) {
    _appRouter.push(ProductGalleryRoute(category: category));
    print('Navigating to product gallery...');
  }
}