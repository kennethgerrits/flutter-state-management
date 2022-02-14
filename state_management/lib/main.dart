import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/home_screen.dart';

final productListProvider =
    StateNotifierProvider<ProductList, List<Product>>((_) {
  var products = ProductRepository.getProducts();
  return ProductList(products);
});

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
