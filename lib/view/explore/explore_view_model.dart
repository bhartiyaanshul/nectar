import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class ExploreViewModel extends BaseViewModel {
  final _categoryService = locator<CategoryService>();

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
}