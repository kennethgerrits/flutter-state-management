import 'package:flutter/material.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';
import 'package:state_management/models/product.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InheritedProduct(
          child: ProductList(title: 'Product state demo home page')),
    );
  }
}

class InheritedProduct extends InheritedWidget {
   final ProductRepository repository = ProductRepository();
   
  const InheritedProduct({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

 

  @override
  bool updateShouldNotify(InheritedProduct oldWidget) => true;

  static InheritedProduct? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedProduct>();
}

class ProductList extends StatefulWidget {
  ProductList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {

    final InheritedProduct inherited = InheritedProduct.of(context); 
    return Scaffold(
      appBar: AppBar(title: const Text("Product Navigation")),
      body: ListView.builder(
        itemCount:
            InheritedProduct.of(context)!.repository.getProducts().length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(
                item: InheritedProduct.of(context)!
                    .repository
                    .getProducts()[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                      item: InheritedProduct.of(context)?
                          .repository
                          .getProducts()[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
