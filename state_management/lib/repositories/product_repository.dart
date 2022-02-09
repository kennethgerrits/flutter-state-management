import 'package:flutter/cupertino.dart';
import 'package:state_management/models/product.dart';

class ProductRepository {
  List<ValueNotifier<Product>> items = <ValueNotifier<Product>>[
    ValueNotifier(Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "orange.jpg",
      0,
    )),
    ValueNotifier(Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "purple.jpg",
      0,
    )),
    ValueNotifier(Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "green.jpg",
      0,
    )),
    ValueNotifier(Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "blue.jpg",
      0,
    )),
    ValueNotifier(Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "yellow.jpeg",
      0,
    ))
  ];

  List<ValueNotifier<Product>> getProducts() {
    return items;
  }
}
