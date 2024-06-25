import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/favourite_service.dart';
import 'package:nectar/core/viewmodel/base_view_model.dart';

class FavouriteViewModel extends BaseViewModel{
  final _favouriteService = locator<FavouriteService>();

  void addProductToFavourite(ProductModel product) {
    _favouriteService.addProductToFavourite(product);
    print('Adding product to favourite...');
  }
}