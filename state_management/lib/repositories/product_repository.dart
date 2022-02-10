import 'package:state_management/models/product.dart';

class ProductRepository {
  List<Product> items = <Product>[
    Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "pixel.jpg",
    ),
    Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "laptop.jpg",
    ),
    Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "tablet.jpg",
    ),
    Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "pendrive.jpg",
    ),
    Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "floppydrive.jpg",
    )
  ];

  List<Product> getProducts() {
    return items;
  }
}
