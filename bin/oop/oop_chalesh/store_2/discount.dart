class Discount {
  num? amount;
  int? code;
  String? expirationDate;

  Discount._(this.amount);

  static Discount fixed({required int price}) {
    num amount = (price * 2.5) / 100;
    return Discount._(amount);
  }

  static Discount percentage({required int price}) {
    num amount = (price * 0.25) / 100;
    return Discount._(amount);
  }

  static Discount freeShipping({required int price}) {
    int amount = price;
    return Discount._(amount);
  }
}
