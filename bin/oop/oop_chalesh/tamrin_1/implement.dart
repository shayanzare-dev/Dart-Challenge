import 'app_data_base.dart';

class ImInformation {
  List<AppDataBase> appDataBase = [];

  getEmail(email) {
    appDataBase.add(email);
  }

  getName(name) {
    appDataBase.add(name);
  }

  getPassword(password) {
    appDataBase.add(password);
  }
}
