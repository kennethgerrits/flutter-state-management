import 'package:state_management/models/product.dart';

class ProductRepository {
  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "pixel.jpg",
      0,
    ));
    items.add(Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "laptop.jpg",
      0,
    ));
    items.add(Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "tablet.jpg",
      0,
    ));
    items.add(Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "pendrive.jpg",
      0,
    ));
    items.add(Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "floppydrive.jpg",
      0,
    ));

    return items;
  }
}
