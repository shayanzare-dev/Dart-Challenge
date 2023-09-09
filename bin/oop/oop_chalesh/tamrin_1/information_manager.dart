import 'dart:io';

import 'app_data_base.dart';

class GetInformation {
  AppDataBase? appDataBase;

  void getEmail() {
    print('email:');
    String? email = stdin.readLineSync() ?? 'default@gmail.com]';
    appDataBase?.emailAddress = email;
  }

  void getName() {
    print('name:');
    String? name = stdin.readLineSync()!;
    AppDataBase appDataBase = AppDataBase(name: name);
//    information.getName(appDataBase.name);
  }

  void getPassword() {
    print('password:');
    int? password = int.tryParse(stdin.readLineSync()!);
    AppDataBase appDataBase = AppDataBase(password: password);
//  information.getPassword(appDataBase.password);
  }
}