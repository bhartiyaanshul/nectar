import 'package:nectar/core/model/category_model.dart';

class CategoryService {

  Future<List<CategoryModel>> getCategories() async {
    return await _categoryRepository.getCategories();
  }
}