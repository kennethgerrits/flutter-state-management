import 'package:binder/binder.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/main.dart';

class ProductViewLogic with Logic {
  const ProductViewLogic(this.scope);

  final Scope scope;

  void updateProduct(Product product) {
    List<Product> list = read(productRef);
    list.map((p) => p.id == product.id ? product : p);

    write(productRef, list.toList());
  }

}
