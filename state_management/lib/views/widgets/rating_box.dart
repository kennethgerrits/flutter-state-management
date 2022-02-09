import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/rating_provider.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _rating = context.watch<Rating>().rating;
    double _size = 20;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => context.read<Rating>().setRating(1),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => context.read<Rating>().setRating(2),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => context.read<Rating>().setRating(3),
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
