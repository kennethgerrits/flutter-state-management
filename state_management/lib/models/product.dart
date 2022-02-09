import 'package:flutter/cupertino.dart';

class Product {
  String name = "";
  String description = "";
  int price = 0;
  String image = "";
  ValueNotifier<int> rating = ValueNotifier(0);

  Product(
      String name, String description, int price, String image, int rating) {
    this.name = name;
    this.description = description;
    this.price = price;
    this.image = image;
    this.rating = ValueNotifier(rating);
  }

  void setRating(int ratingNew) {
    rating.value = ratingNew;
  }
}
