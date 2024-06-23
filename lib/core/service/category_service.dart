import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class CategoryService {

  Future<List<CategoryModel>> getCategories() async {
    final response = await supabase.from('category').select('*');
    if(response.isEmpty){
      return [];
    }
    return response.map((category) => CategoryModel.fromMap(category)).toList();
  }

  Future<List<ProductModel>> getCategoryProducts(CategoryModel category) async {
    final response = await supabase.from('product').select('*, brand(*), category(*)').eq('category_id', category.id);
    if(response.isEmpty){
      return [];
    }
    return response.map((product) => ProductModel.fromMap(product)).toList();
  }
}