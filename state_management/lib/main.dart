import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/product_list.dart';
import 'package:state_management/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Provider<ProductList>(
        create: (_) => ProductList(),
        child: const MaterialApp(
          home: MyHomePage(),
        ),
      );
}
