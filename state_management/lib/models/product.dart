import 'package:mobx/mobx.dart';

part 'product.g.dart';

class Product = _Product with _$Product;

abstract class _Product with Store {
  _Product(this.name, this.description, this.price, this.image, this.rating);

  @observable
  String name;

  @observable
  String description;

  @observable
  int price;

  @observable
  String image;

  @observable
  int rating;
}
