part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProduct extends ProductEvent {
  final List<Product> products;

  const LoadProduct({this.products = const <Product>[]});

  @override
  List<Object> get props => [products];
}

class UpdateProduct extends ProductEvent {
  final Product product;

  const UpdateProduct({required this.product});

  @override
  List<Object> get props => [product];
}
