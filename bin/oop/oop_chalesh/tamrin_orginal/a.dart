import 'app_data_base.dart';
import 'information_manager.dart';
import 'interface_class.dart';

class ImInformation implements Information {
  List<AppDataBase> appDataBase = [];

  // ImInformation(this.appDataBase);

  @override
  getEmail(AppDataBase email) {
    appDataBase.add(email);
  }

  @override
  getName(AppDataBase name) {
    appDataBase.add(name);
  }

  @override
  getPassword(AppDataBase password) {
    appDataBase.add(password);
  }
}

void main() {
  GetInformation getInformation = GetInformation();
  getInformation.getName();
  AppDataBase appDataBase = AppDataBase(name: getInformation.getName());
  print(appDataBase.name);
}
