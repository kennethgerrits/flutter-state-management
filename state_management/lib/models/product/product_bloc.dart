import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/models/product/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoading()) {
    on<LoadProduct>(_onLoadProduct);
    on<UpdateProduct>(_onUpdateProduct);
  }

  void _onLoadProduct(LoadProduct event, Emitter<ProductState> emit) {
    print('load');
    emit(
      ProductLoaded(products: event.products),
    );
  }

  void _onUpdateProduct(UpdateProduct event, Emitter<ProductState> emit) {
    final state = this.state;

    if (state is ProductLoaded) {
      print('update');
      List<Product> products = (state.products.map((product) {
        return product.id == event.product.id ? event.product : product;
      })).toList();
      // emit(const ProductSwitching());
      emit(ProductLoaded(products: products));
    }
  }

  Product refreshProduct(Product product) {
    final state = this.state;

    if (state is ProductLoaded) {
      // var result = state.products.map((e) {
      //   return e.id == product.id;
      // });

      Product result;
      for (var i = 0; i < state.products.length; i++) {
        if (state.products[i].id == product.id) {
          result = state.products[i];
          return result;
        }
      }
    }

    return product;
  }
}
