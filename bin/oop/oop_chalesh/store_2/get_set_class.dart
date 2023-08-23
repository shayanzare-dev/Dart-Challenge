import 'category_enum.dart';
import 'discount.dart';
import 'products.dart';

class GetSet {
  num get finalPrice {
    Products products = Products.create(
        name: 'shayan',
        price: 1500,
        category: Category.electronics,
        description: 'hellooo',
        discount: discount);
    Discount discount = Discount.fixed(price: products.price!);
    return products.price! - discount.amount!;
  }
}
