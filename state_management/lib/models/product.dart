import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class Product {
  Product(this.id, this.name, this.description, this.price, this.image,
      this.rating);

  int id;
  String name;
  String description;
  int price;
  String image;
  int rating;

  Product copyWith(
      {int? id,
      String? name,
      String? description,
      int? price,
      String? image,
      int? rating}) {
    return Product(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      price ?? this.price,
      image ?? this.image,
      rating ?? this.rating,
    );
  }
}

class ProductList extends StateNotifier<List<Product>> {
  ProductList([List<Product>? initalProducts]) : super(initalProducts ?? []);

  void add(Product product) {
    state = [
      ...state,
      product,
    ];
  }

  void updateProduct(Product newProduct) {
    state = (state.map((product) {
      return product.id == newProduct.id ? newProduct : product;
    })).toList();
  }

  Product fetchProduct(Product oldProduct) {
    Product result;
    for (var i = 0; i < state.length; i++) {
      if (state[i].id == oldProduct.id) {
        result = state[i];
        return result;
      }
    }

    return oldProduct;
  }
}
