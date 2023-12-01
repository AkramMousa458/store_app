import 'package:store_app/models/rating_model.dart';

class ProductModel {
  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.category,
      required this.price,
      required this.rating});

  final int id;
  final String title, description, image, category;
  final num price;
  final RatingModel rating;

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}




// class ProductModel {
//   final int id;
//   final String title;
//   final num price;
//   final String description;
//   final String category;
//   final String image;
//   // final Rating rating;

//   ProductModel(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image,
//       // required this.rating
//       });

//   factory ProductModel.fromJson(json) {
//     return ProductModel(
//         id: json["id"],
//         title: json["title"],
//         price: num.parse(json["price"].toString()),
//         description: json["description"],
//         category: json["category"],
//         image: json["image"],
//         // rating: Rating.fromJson(json["rating"])
//         );
//   }
// }

// class Rating {
//   final num rate;
//   final int count;

//   Rating({required this.rate, required this.count});
//   factory Rating.fromJson(json) {
//     return Rating(rate: json['rate'], count: json["count"]);
//   }
// }