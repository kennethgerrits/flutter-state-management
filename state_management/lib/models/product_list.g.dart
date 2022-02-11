// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductList on _ProductList, Store {
  final _$productsAtom = Atom(name: '_ProductList.products');

  @override
  ObservableList<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_ProductListActionController = ActionController(name: '_ProductList');

  @override
  void addProduct(Product product) {
    final _$actionInfo = _$_ProductListActionController.startAction(
        name: '_ProductList.addProduct');
    try {
      return super.addProduct(product);
    } finally {
      _$_ProductListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadProducts() {
    final _$actionInfo = _$_ProductListActionController.startAction(
        name: '_ProductList.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$_ProductListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
