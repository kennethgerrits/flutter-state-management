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
  void _setRatingAsOne() {
    setState(() {
      widget.item.setRating(1);
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      widget.item.setRating(2);
    });
  }

  void _setRatingAsThree() {
    setState(() {
      widget.item.setRating(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(widget.item.rating.value);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (widget.item.rating.value >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (widget.item.rating.value >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (widget.item.rating.value >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
