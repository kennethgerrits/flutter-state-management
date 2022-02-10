import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/providers/product_provider.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    ProductProvider provider = context.watch<ProductProvider>();
    double _size = 20;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        for (int i = 1; i <= 3; i++)
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (item.rating >= i
                  ? Icon(
                      Icons.star,
                      size: _size,
                    )
                  : Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                item.rating = i;
                provider.isChanged();
              },
              iconSize: _size,
            ),
          ),
      ],
    );
  }
}
