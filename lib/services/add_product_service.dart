import 'package:store_app/helper/api.dart';

class AddProductService{
  static Future<Map<String, dynamic>> addProduct() async {
      Map<String, dynamic> data = await Api().send(url: 'https://fakestoreapi.com/products', body:  {
      'title': 'NFT photo',
      'price': '20',
      'description': 'photo of me on shore',
      'image': ' https://i.pravatar.cc',
      'category': 'electronic',
    },);

    return data;
  }
}