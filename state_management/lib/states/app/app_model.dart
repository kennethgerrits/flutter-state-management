import 'package:redux/redux.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/states/app/app_reducers.dart';

import 'app_state.dart';

class AppModel {
  final List<Product> products;
  final Function(Product) onUpdateProduct;
  final Function(Product) editProduct;

  AppModel(
      {required this.products,
      required this.onUpdateProduct,
      required this.editProduct});

  factory AppModel.create(Store<AppState> store) {
    _onUpdateProduct(Product product) {
      store.dispatch(UpdateProductAction(product));
    }

    Product _editProduct(Product product) {
      for (int i = 0; i < store.state.products.length; i++) {
        if (product.id == store.state.products[i].id) {
          return store.state.products[i];
        }
      }

      return product;
    }

    return AppModel(
        products: store.state.products,
        onUpdateProduct: _onUpdateProduct,
        editProduct: _editProduct);
  }
}
