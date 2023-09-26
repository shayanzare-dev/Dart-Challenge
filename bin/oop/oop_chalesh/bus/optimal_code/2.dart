//
// class Discount {
//   num disCount = 0;
//   num wallet = 0;
//   factory Discount.create(
//       {required num wallet, required String type, required num price}) {
//     if (type == 'buy') {
//       return Discount._buy(wallet: wallet, price: price);
//     }
//     if (type == 'reserve') {
//       return Discount._reserve(wallet: wallet, price: price);
//     }
//     if (type == 'cancelReserveTicket') {
//       return Discount._cancelReserveTicket(wallet: wallet, price: price);
//     } else {
//       return Discount._cancelBuy(wallet: wallet, price: price);
//     }
//   }
//
//   Discount._buy({required this.wallet, required num price}) {
//     wallet -= price;
//   }
//
//   Discount._reserve({required this.wallet, required num price}) {
//     disCount = (price * 30) / 100;
//     wallet -= disCount;
//   }
//
//   Discount._cancelReserveTicket({required this.wallet, required num price}) {
//     price = price - (price * 30) / 100;
//     disCount = price - (price * 20) / 100;
//     wallet += disCount;
//   }
//
//   Discount._cancelBuy({required this.wallet, required num price}) {
//     price = price - (price * 10) / 100;
//     wallet += price;
//   }
// }
