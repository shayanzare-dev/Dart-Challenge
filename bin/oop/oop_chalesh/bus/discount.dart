class Discount {
  late num disCount;
  late num wallet;

  Discount.buy({required this.wallet, required num price}) {
    disCount = price;
    wallet -= disCount;
  }

  Discount.reserve({required this.wallet, required num price}) {
    disCount = (price * 30) / 100;
    wallet -= disCount;
  }

  Discount.cancelReserveTicket({required this.wallet, required num price}) {
    price = price - (price * 30) / 100;
    disCount = price - (price * 20) / 100;
    wallet += disCount;
  }

  Discount.cancelBuy({required this.wallet, required num price}) {
    disCount = (price * 10) / 100;
    price = price - disCount;
    wallet += price;
  }
}
