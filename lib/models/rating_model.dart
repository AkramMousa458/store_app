class RatingModel {
  RatingModel({required this.rate, required this.count});

  final num rate;
  final int count;

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
