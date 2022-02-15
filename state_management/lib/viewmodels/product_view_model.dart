import 'package:state_management/models/product.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ProductViewModel {
  // Inject a reactive state of type List.
  final products = ProductRepository().getProducts().inj();

  updateProducts(Product product) {
    products.state.map((p) => p.id == product.id ? product : p);

    products.refresh();
  }

  getProduct(Product product) {
    for (int i = 0; i < products.state.length; i++) {
      if (products.state[i].id == product.id) {
        return products.state[i];
      }
    }

    return product;
  }

  int get length => products.state.length;

  List<Product> get items => products.state;
}
