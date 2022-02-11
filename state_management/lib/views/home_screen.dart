import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/product_list.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<ProductList>(context);
    items.loadProducts();

    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.products.length,
          itemBuilder: (context, index) {
            return Observer(
              builder: (_) => GestureDetector(
                child: ProductBox(item: items.products[index]),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductPage(item: items.products[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
