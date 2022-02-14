import 'package:state_management/models/product/product.dart';

class ProductRepository {
  List<Product> items = <Product>[
    Product(1, "Pixel", "Pixel is the most feature-full phone ever", 800,
        "pixel.jpg", 0),
    Product(2, "Laptop", "Laptop is most productive development tool", 2000,
        "laptop.jpg", 0),
    Product(3, "Tablet", "Tablet is the most useful device ever for meeting",
        1500, "tablet.jpg", 0),
    Product(4, "Pendrive", "Pendrive is useful storage medium", 100,
        "pendrive.jpg", 0),
    Product(5, "Floppy Drive", "Floppy drive is useful rescue storage medium",
        20, "floppydrive.jpg", 0)
  ];

  List<Product> getProducts() {
    return items;
  }
}
