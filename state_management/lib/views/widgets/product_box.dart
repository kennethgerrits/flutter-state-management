import 'package:flutter/material.dart';
import 'package:state_management/views/widgets/rating_box.dart';
import 'package:state_management/models/product.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.item}) : super(key: key);
  final ValueNotifier<Product> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/" + item.value.image),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(item.value.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(item.value.name),
                    Text("Price: " + item.value.price.toString()),
                    RatingBox(item: item),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
