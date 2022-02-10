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
      children: [
        for (int i = 1; i <= 3; i++)
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (_rating >= i
                  ? Icon(
                      Icons.star,
                      size: _size,
                    )
                  : Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () => context.read<Rating>().setRating(i),
              iconSize: _size,
            ),
          ),
      ],
    );
  }
}
