import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/main.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ProductList extends ReactiveStatelessWidget {
  const ProductList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: productsViewModel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: productsViewModel.products.state[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                        item: productsViewModel.products.state[index]),
                  ),
                );
              },
            );
          },
        ));
  }
}
