import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

import 'package:state_management/models/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final productRepository = Get.find<ProductRepository>();
    // productRepository.products;
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: productRepository.products.length,
          itemBuilder: (context, index) {
            final product = productRepository.products[index];
            return GestureDetector(
              child: ProductBox(item: product.value),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(item: product.value),
                  ),
                );
              },
            );
          },
        ));
  }
}
