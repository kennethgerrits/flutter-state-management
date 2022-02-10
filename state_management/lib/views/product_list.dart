import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

import 'package:state_management/models/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.title, required this.items})
      : super(key: key);
  final String title;
  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ValueListenableBuilder(
              valueListenable: items[index].version,
              builder: (BuildContext context, int value, Widget? child) {
                return GestureDetector(
                  child: ProductBox(item: items[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(item: items[index]),
                      ),
                    );
                  },
                );
              },
            );
          },
        ));
  }
}
