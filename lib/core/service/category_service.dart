import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/supabase.dart';

class CategoryService {

  Future<List<CategoryModel>> getCategories() async {
    final response = await supabase.from('category').select('*');
    if(response.isEmpty){
      return [];
    }
    return response.map((category) => CategoryModel.fromMap(category)).toList();
  }
}