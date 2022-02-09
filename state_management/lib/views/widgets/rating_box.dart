import 'package:flutter/material.dart';
import 'package:state_management/models/product.dart';

class RatingBox extends StatefulWidget {
  final ValueNotifier<Product> item;

  RatingBox({Key? key, required this.item}) : super(key: key);

  @override
  _RatingBoxState createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  void _setRatingAsOne() {
    setState(() {
      widget.item.value.setRating(1);
      widget.item.notifyListeners();
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      widget.item.value.setRating(2);
      widget.item.notifyListeners();
    });
  }

  void _setRatingAsThree() {
    setState(() {
      widget.item.value.setRating(3);
      widget.item.notifyListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(widget.item.value.rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (widget.item.value.rating >= 1
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
            icon: (widget.item.value.rating >= 2
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
            icon: (widget.item.value.rating >= 3
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
