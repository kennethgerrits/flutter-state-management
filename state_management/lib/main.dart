import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/product_provider.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/home_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (_) => ProductProvider(ProductRepository.getProducts())),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'State management demo',
      home: MyHomePage(),
    );
  }
}
