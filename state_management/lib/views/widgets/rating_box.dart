import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';
import 'package:state_management/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RatingBox extends HookConsumerWidget {
  const RatingBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                ref
                    .read(productListProvider.notifier)
                    .updateProduct(item.copyWith(rating: i));
              },
              iconSize: _size,
            ),
          ),
      ],
    );
  }
}
