import 'package:state_management/models/product.dart';

class ProductRepository {
  List<Product> items = <Product>[
    Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "orange.jpg",
      0,
    ),
    Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "purple.jpg",
      0,
    ),
    Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "green.jpg",
      0,
    ),
    Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "blue.jpg",
      0,
    ),
    Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "yellow.jpeg",
      0,
    )
  ];

  List<Product> getProducts() {
    return items;
  }
}
