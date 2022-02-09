import 'package:flutter/material.dart';

class Rating with ChangeNotifier {
  int _rating = 0;

  int get rating => _rating;

  void setRating(int rating) {
    _rating = rating;
    notifyListeners();
  }
}
