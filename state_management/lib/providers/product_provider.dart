import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> productList = [];

  ProductProvider(this.productList);

  void isChanged() {
    notifyListeners();
  }
}
