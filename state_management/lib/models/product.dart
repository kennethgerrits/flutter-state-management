import 'package:get/get.dart';

class Product {
  String _name;
  String _description;
  int _price;
  String _image;
  int _rating = 0;
  RxInt _version = 1.obs;

  Product(this._name, this._description, this._price, this._image);

  String get name => _name;

  set name(String value) {
    _name = value;
    setVersion();
  }

  String get description => _description;

  set description(String value) {
    _description = value;
    setVersion();
  }

  int get rating => _rating;

  set rating(int value) {
    _rating = value;
    setVersion();
  }

  int get version => _version.value;

  set version(int value) {
    _version.value = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
    setVersion();
  }

  void setVersion() {
    _version.value++;
  }
}
