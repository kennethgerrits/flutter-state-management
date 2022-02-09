import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/views/widgets/rating_box.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.item}) : super(key: key);
  final ValueNotifier<Product> item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.value.name),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/" + item.value.image),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        item.value.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(item.value.description),
                      Text("Price: " + item.value.price.toString()),
                      RatingBox(item: item),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
