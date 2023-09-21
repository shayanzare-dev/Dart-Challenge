import 'dart:io';

class UserInformation {
  String? name;
  String? lastName;
  String? imageUrl;
  num wallet = 0;
}

extension RechargeWallet on UserInformation {
  void chargeWallet() {
    print('number:');
    int? number = int.tryParse(stdin.readLineSync()!);
    wallet = (wallet + number!);
  }
}
