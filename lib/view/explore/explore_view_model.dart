import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class ExploreViewModel extends BaseViewModel {
  final _categoryService = locator<CategoryService>();
  final _appRouter = locator<AppRouter>();

  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  ExploreViewModel() {
    getCategories();
  }

  void getCategories() async {
    _categories = await _categoryService.getCategories();
    print(_categories.toString());
    notifyListeners();
  }

  void navigateToProductGallery(CategoryModel category) {
    _appRouter.push(ProductGalleryRoute(category: category));
    print('Navigating to product gallery...');
  }
}