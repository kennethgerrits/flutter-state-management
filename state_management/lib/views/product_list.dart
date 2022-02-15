import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/states/app/app_model.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

import 'package:state_management/models/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.title, required this.model})
      : super(key: key);
  final String title;
  final AppModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: model.products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: model.products[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductPage(item: model.products[index]),
                  ),
                );
              },
            );
          },
        ));
  }
}
