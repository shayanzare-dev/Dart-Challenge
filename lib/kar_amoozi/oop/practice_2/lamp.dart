import 'package:project/kar_amoozi/oop/practice_2/smart_home.dart';

class Lamp extends SmartHome {
  Lamp({required super.name, required super.brandType});

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
