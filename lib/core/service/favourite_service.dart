import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class FavouriteService {

  Future<void> addProductToFavourite(ProductModel product) async {
    print('Adding product to favourite... favourite_service.dart 1');
    print(product.id.toString());
    final res = await supabase.from('user_favorite').upsert({
      'product_id': product.id,
      'user_id': supabase.auth.currentUser!.id,
    });
    print('Adding product to favourite... favourite_service.dart 2');
  }

  Future<void> removeProductFromFavourite(int productId) async {
    print('Removing product from favourite...');
    final res = await supabase.from('user_favorite').delete().eq('product_id', productId).eq('user_id', supabase.auth.currentUser!.id);
  }

  isLiked(int productId) async {
    try{
      final res = await supabase.from('user_favorite').select().eq('product_id', productId).eq('user_id', supabase.auth.currentUser!.id);
      if (res.isEmpty) {
        return false;
      }
      return res.isNotEmpty;
    }
    catch(e){
      print(e);
    }
    
  }

  Future<List<ProductModel>> getFavouriteProducts() async {
    print('Getting favourite products...');
    final res = await supabase.from('user_favorite').select('*, product(*, brand(*), category(*))').eq('user_id', supabase.auth.currentUser!.id);
    if (res.isEmpty) {
      throw Exception('Failed to get favourite products');
    }
    return res.map((e) => ProductModel.fromMap(e['product'])).toList();
  }
}