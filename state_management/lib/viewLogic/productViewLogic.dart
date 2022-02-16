import 'package:binder/binder.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/main.dart';

class ProductViewLogic with Logic {
  const ProductViewLogic(this.scope);

  final Scope scope;

  void updateProduct(Product product) {
    update<Iterable<Product>>(productRef,
        (list) => list.map((p) => p.id == product.id ? product : p).toList());
  }

  Product editProduct(Product product) {
    List<Product> list = read(productRef);
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == product.id) {
        return list[i];
      }
    }

    return product;
  }
}
