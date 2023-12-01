import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  static Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price.toString(),
        'description': description,
        'image': image,
        'category': category,
      },
    );

    return ProductModel.fromJson(data);
  }
}
