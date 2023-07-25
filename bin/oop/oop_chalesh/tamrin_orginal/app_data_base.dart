
import 'information_manager.dart';

class AppDataBase {
  GetInformation? name;
  String? emailAddress;
  int? password;

  // set emailAddress(String value) => _emailAddress = '$value@gmail.com';
  //
  // set password(int value) => _password = value;

  AppDataBase({this.emailAddress, this.name, this.password});
}
