import 'package:state_management/models/product.dart';

class ProductRepository {
  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "orange.jpg",
    ));
    items.add(Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "purple.jpg",
    ));
    items.add(Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "green.jpg",
    ));
    items.add(Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "blue.jpg",
    ));
    items.add(Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "yellow.jpeg",
    ));

    return items;
  }
}