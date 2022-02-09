import 'package:flutter/cupertino.dart';

class Product {
  String name;
  String description;
  int price;
  String image;
  ValueNotifier<int> rating = ValueNotifier(0);

  Product(this.name, this.description, this.price, this.image, int rating) {
    this.rating = ValueNotifier(rating);
  }

  void setRating(int ratingNew) {
    rating.value = ratingNew;
  }
}
