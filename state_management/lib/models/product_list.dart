import 'package:mobx/mobx.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/repositories/product_repository.dart';

part 'product_list.g.dart';

class ProductList = _ProductList with _$ProductList;

abstract class _ProductList with Store {
  @observable
  ObservableList<Product> products = ObservableList<Product>();

  @action
  void addProduct(Product product) {
    products.add(product);
  }

  @action
  void loadProducts() {
    products = ProductRepository.getProducts();
  }
}
