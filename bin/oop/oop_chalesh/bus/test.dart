import 'discount.dart';
import 'user_profile/user_profile.dart';

void main() {
  UserProfile.wallet = 100;
  Discount discount =
      Discount.create(wallet: UserProfile.wallet, type: 'buy', price: 23);
  print(discount.wallet);
}
