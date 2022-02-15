import 'package:flutter/cupertino.dart';

class Product {
  int _id;
  String _name;
  String _description;
  int _price;
  String _image;
  int _rating = 0;

  Product(this._id, this._name, this._description, this._price, this._image);

  int get id => _id;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  int get rating => _rating;

  set rating(int value) {
    _rating = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }
}
