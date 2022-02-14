import 'package:equatable/equatable.dart';

class Product extends Equatable {
  int _id;
  String _name;
  String _description;
  int _price;
  String _image;
  int _rating;

  Product(this._id, this._name, this._description, this._price, this._image,
      this._rating);

  Product copyWith(
      {int? id,
      String? name,
      String? description,
      int? price,
      String? image,
      int? rating}) {
    Product newProduct = Product(
      id ?? _id,
      name ?? _name,
      description ?? _description,
      price ?? _price,
      image ?? _image,
      rating ?? _rating,
    );

    return newProduct;
  }

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

  @override
  List<Object?> get props => [id, name, description, price, rating];
}
