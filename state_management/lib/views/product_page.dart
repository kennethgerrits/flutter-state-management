import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/models/product/product.dart';
import 'package:state_management/models/product/product_bloc.dart';
import 'package:state_management/views/product_form.dart';
import 'package:state_management/views/widgets/rating_box.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.oldItem}) : super(key: key);
  final Product oldItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (_, state) {
        final Product item =
            context.read<ProductBloc>().refreshProduct(oldItem);
        print("Rebuild page");
        return Scaffold(
          appBar: AppBar(
            title: Text(item.name),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(_).push(
                    MaterialPageRoute(
                      builder: (__) => ProductForm(item: item),
                    ),
                  );
                },
                child: const Icon(Icons.create),
              ),
            ],
          ),
          body: Center(
            child: Container(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "assets/" + item.image,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              item.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(item.description),
                            Text("Price: " + item.price.toString()),
                            RatingBox(item: item),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
