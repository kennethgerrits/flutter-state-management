import 'package:redux/redux.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/states/app/app_state.dart';

class UpdateProductAction {
  final Product product;

  UpdateProductAction(this.product);
}

List<Product> updateProductReducer(List<Product> state, action) {
  state.map((product) {
    return product.id == action.item.id ? action.item : product;
  });

  return state;
}

final Reducer<List<Product>> productsReducer = combineReducers<List<Product>>(
    [TypedReducer<List<Product>, UpdateProductAction>(updateProductReducer)]);

AppState appStateReducer(AppState state, action) {
  return AppState(products: productsReducer(state.products, action));
}
