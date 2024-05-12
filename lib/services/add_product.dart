import 'package:store_app/constant.dart';
import 'package:store_app/helper/api.dart';

class AddProduct {
  Future<dynamic> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    await Api().post(url: '$baseUrl', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
  }
}
