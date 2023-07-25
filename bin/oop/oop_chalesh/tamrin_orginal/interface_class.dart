import 'app_data_base.dart';

abstract class Information {
  void getEmail(AppDataBase email);

  void getName(AppDataBase name);

  void getPassword(AppDataBase password);
}
