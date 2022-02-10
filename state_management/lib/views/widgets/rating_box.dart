import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';

class RatingBox extends StatefulWidget {
  final Product item;

  RatingBox({Key? key, required this.item}) : super(key: key);

  @override
  _RatingBoxState createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  void _setRating(int rating) {
    setState(() {
      widget.item.rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: () => _setRating(i),
              iconSize: _size,
            ),
          ),
      ],
    );
  }
}
