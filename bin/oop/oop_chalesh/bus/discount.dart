import 'user_profile/user_profile.dart';

class Discount {
  final num wallet;

  Discount({required num price, required this.wallet}) {
    num wallet = UserProfile.wallet;
    wallet = wallet - (price * 30) / 100;
  }

// Discount.buy({required int price}) {
//   wallet = wallet - (price * 30) / 100;
// }
}
