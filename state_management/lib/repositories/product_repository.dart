import 'package:get/get.dart';
import 'package:state_management/models/product.dart';

class ProductRepository extends GetxController {
  List<Rx<Product>> products = <Rx<Product>>[
    Product(
      "Pixel",
      "Pixel is the most feature-full phone ever",
      800,
      "pixel.jpg",
    ).obs,
    Product(
      "Laptop",
      "Laptop is most productive development tool",
      2000,
      "laptop.jpg",
    ).obs,
    Product(
      "Tablet",
      "Tablet is the most useful device ever for meeting",
      1500,
      "tablet.jpg",
    ).obs,
    Product(
      "Pendrive",
      "Pendrive is useful storage medium",
      100,
      "pendrive.jpg",
    ).obs,
    Product(
      "Floppy Drive",
      "Floppy drive is useful rescue storage medium",
      20,
      "floppydrive.jpg",
    ).obs
  ];

  List<Rx<Product>> getProducts() {
    return products;
  }
}
