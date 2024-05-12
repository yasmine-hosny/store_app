import 'package:store_app/constant.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoriesProductsService {
  Future<List<ProductModel>> getCategoriesProducts(String categoryName) async {
    List<dynamic> data =
        await Api().get(url: '$baseUrl/category/$categoryName');

    List<ProductModel> itemsList = [];
    for (int i = 0; i < data.length; i++) {
      itemsList.add(ProductModel.fromJason(data[i]));
    }
    return itemsList;
  }
}
