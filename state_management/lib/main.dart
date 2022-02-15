import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/home_screen.dart';
import 'package:binder/binder.dart';
import 'package:state_management/viewLogic/productViewLogic.dart';

void main() => runApp(const MyApp());

final productRef = StateRef<List<Product>>(ProductRepository.getProducts());

final productViewLogicRef = LogicRef(((scope) => ProductViewLogic(scope)));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BinderScope(
        child: MaterialApp(
      title: "State Management",
      home: MyHomePage(),
    ));
  }
}
