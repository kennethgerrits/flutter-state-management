import 'package:flutter/material.dart';
import 'package:state_management/repositories/product_repository.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = ProductRepository.getProducts();

    return Scaffold(
      appBar: AppBar(title: const Text("Product Navigation")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductPage(item: items[index])),
              );
            },
          );
        },
      ),
    );
  }
}
