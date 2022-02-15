class Product {
  int id;
  String name;
  String description;
  int price;
  String image;
  int rating;

  Product(this.id, this.name, this.description, this.price, this.image,
      this.rating);

  Product copyWith(
      {int? id,
      String? name,
      String? description,
      int? price,
      String? image,
      int? rating}) {
    return Product(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      price ?? this.price,
      image ?? this.image,
      rating ?? this.rating,
    );
  }
}
