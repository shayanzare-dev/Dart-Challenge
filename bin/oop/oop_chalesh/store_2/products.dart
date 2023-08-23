import 'category_enum.dart';
import 'discount.dart';

class Products {
  String? name;
  int? price;
  Category? category;
  String? description;
  Discount? discount;

  Products(
      [this.name, this.price, this.category, this.description, this.discount]);

  factory Products.create(
      {required String name,
      required int price,
      required Category category,
      required String description,
      required Discount discount}) {
    return Products(name, price, category, description, discount);
  }
}
