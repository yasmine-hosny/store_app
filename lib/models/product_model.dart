class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJason(jasonData) {
    return ProductModel(
      id: jasonData['id'],
      title: jasonData['title'],
      price: jasonData['price'],
      description: jasonData['description'],
      image: jasonData['image'],
      rating: RatingModel.fromJason(jasonData['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });
  factory RatingModel.fromJason(jasonData) {
    return RatingModel(rate: jasonData['rate'], count: jasonData['count']);
  }
}
