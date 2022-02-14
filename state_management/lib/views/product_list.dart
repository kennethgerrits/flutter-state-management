import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/models/product/product_bloc.dart';
import 'package:state_management/views/product_page.dart';
import 'package:state_management/views/widgets/product_box.dart';

import 'package:state_management/models/product/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (_, state) {
            print("rebuild list");
            if (state is ProductLoading) {
              return const CircularProgressIndicator();
            }
            if (state is ProductLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (__, index) {
                  return GestureDetector(
                    child: ProductBox(item: state.products[index]),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (___) =>
                              ProductPage(oldItem: state.products[index]),
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return const Text("Something went wrong");
            }
          },
        ));
  }
}
