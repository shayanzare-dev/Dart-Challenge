import 'dart:io';

import 'app_data_base.dart';
import 'interface_class.dart';

class GetInformation {
  Information? information;

  void getEmail() {
    print('email:');
    String email = stdin.readLineSync()!;
    AppDataBase appDataBase = AppDataBase(emailAddress: email);
    information?.getEmail(appDataBase);
  }

  void getName() {
    print('name:');
    String? name = stdin.readLineSync()!;
    AppDataBase appDataBase = AppDataBase(name: name);
    information?.getName(appDataBase);
  }

  void getPassword() {
    print('password:');
    int? password = int.tryParse(stdin.readLineSync()!);
    AppDataBase appDataBase = AppDataBase(password: password);
    information?.getPassword(appDataBase);
  }
}
// Singleton، Factory، Observer و Decorator