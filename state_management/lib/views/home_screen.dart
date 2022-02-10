import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/product_provider.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = context.watch<ProductProvider>().productList;

    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: items[index]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ProductPage(item: items[index])),
                );
              },
            );
          },
        ));
  }
}
