import 'package:flutter/cupertino.dart';

class Product {
  String _name;
  String _description;
  int _price;
  String _image;
  ValueNotifier<int> _version = ValueNotifier(0);
  int _rating = 0;

  Product(this._name, this._description, this._price, this._image);

  String get name => _name;

  set name(String value) {
    _name = value;
    _setVersion();
  }

  ValueNotifier<int> get version => _version;

  String get description => _description;

  set description(String value) {
    _description = value;
    _setVersion();
  }

  int get rating => _rating;

  set rating(int value) {
    _rating = value;
    _setVersion();
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
    _setVersion();
  }

  void _setVersion() {
    _version.value = _version.value + 1;
  }
}
