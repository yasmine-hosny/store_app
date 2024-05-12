import 'package:store_app/constant.dart';
import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> allCategories() async {
    List<dynamic> data = await Api().get(url: '$baseUrl/categories');
    return data;
  }
}
