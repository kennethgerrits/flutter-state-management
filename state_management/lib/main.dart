import 'package:flutter/material.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/product_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final repository = ProductRepository();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(
        title: 'Product state demo home page',
        items: repository.getProducts(),
      ),
    );
  }
}
