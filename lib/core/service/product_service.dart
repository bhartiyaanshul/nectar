import 'dart:developer';

import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class ProductService{
  Future<List<ProductModel>> getProducts() async {
    print('Getting products... product_service.dart');
    // Fetch products from API
    final products = await supabase.from('product').select('*, brand(*), category(*)');
    if(products.isEmpty){
      log("No products found or Unknown error");
      return [];
    }
    // print(products.toString());
    return products.map((product) => ProductModel.fromMap(product)).toList();
  }

  Future<List<ProductModel>> getProductsBySearch(String search) async {
    print('Getting products by search... product_service.dart');
    // Fetch products from API
    final products = await supabase.from('product').select('*, brand(*), category(*)').ilike('name', '%$search%');
    if(products.isEmpty){
      log("No products found or Unknown error");
      return [];
    }
    // print(products.toString());
    return products.map((product) => ProductModel.fromMap(product)).toList();
  }
}