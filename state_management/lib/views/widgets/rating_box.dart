import 'package:flutter/material.dart';
import 'package:state_management/main.dart';
import 'package:state_management/models/product.dart';
import 'package:binder/binder.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  @override
  Widget build(BuildContext context) {
    context.watch(productRef);
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
              icon: (widget.item.rating >= i
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
                context
                    .use(productViewLogicRef)
                    .updateProduct(widget.item.copyWith(rating: i));
              },
              iconSize: _size,
            ),
          ),
      ],
    );
  }
}
