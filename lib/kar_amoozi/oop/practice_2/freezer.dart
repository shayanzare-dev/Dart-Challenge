import 'package:project/kar_amoozi/oop/practice_2/smart_home.dart';

class Freezer extends SmartHome {
  Freezer({required super.name, required super.brandType});

  @override
  void off() {
    super.off();
    print('$name is off');
  }

  @override
  void on() {
    super.on();
    print('$name is on');
  }
}
