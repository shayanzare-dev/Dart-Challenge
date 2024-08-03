import 'dart:io';

class UserProfile {
  String name = 'shayan';
  String lastName = 'zare';
  String imageUrl =
      'https://cinemaetemad.ir/wp-content/uploads/2023/06/ilan-mask-780x470.jpg';
  static num wallet = 0;

  static void chargeWallet() {
    print('number charge:');
    int? numberCharge = int.tryParse(stdin.readLineSync()!);
    wallet = (wallet + numberCharge!);
  }
}
