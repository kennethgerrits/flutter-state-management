import 'package:flutter/material.dart';
import 'package:state_management/main.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/views/product_form.dart';
import 'package:state_management/views/widgets/rating_box.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ProductPage extends ReactiveStatelessWidget {
  ProductPage({Key? key, required this.item}) : super(key: key);
  Product item;

  @override
  Widget build(BuildContext context) {
    item = productsViewModel.getProduct(item);
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductForm(item: item),
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
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(item.description),
                          Text("Price: " + item.price.toString()),
                          RatingBox(item: item),
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
