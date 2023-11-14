import 'package:store_app/models/rating_model.dart';

class ProductModel {
  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.imgae,
      required this.price,
      required this.rating});

  final int id;
  final String title, description, imgae;
  final double price;
  final RatingModel rating;

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      imgae: jsonData['imgae'],
      price: jsonData['price'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}
