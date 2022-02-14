import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/models/product/product_bloc.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/product_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final repository = ProductRepository();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  ProductBloc()..add(LoadProduct(products: repository.items)))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ProductList(
            title: 'Product state demo home page',
          ),
        ));
  }
}
