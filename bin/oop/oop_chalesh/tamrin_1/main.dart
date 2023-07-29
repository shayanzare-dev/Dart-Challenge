import 'app_data_base.dart';
import 'information_manager.dart';

void main() {
  GetInformation getInformation = GetInformation();
  getInformation.getEmail();
  AppDataBase appDataBase =
      AppDataBase(emailAddress: getInformation.appDataBase?.emailAddress);
  print(appDataBase.emailAddress);
}
