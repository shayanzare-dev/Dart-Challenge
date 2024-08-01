import 'package:project/kar_amoozi/oop/practice_2/camera.dart';
import 'package:project/kar_amoozi/oop/practice_2/freezer.dart';
import 'package:project/kar_amoozi/oop/practice_2/lamp.dart';
import 'package:project/kar_amoozi/oop/practice_2/smart_home.dart';
import 'package:project/kar_amoozi/oop/safe_number_get_input.dart';

void main() {
  List<SmartHome> things = [];

  while (things.length < 10) {
    final int input = safeGetNumber(printValue: 'insert between 1 ta 3');
    switch (input) {
      case 1:
        things.add(Lamp(
          name: 'lamp',
          brandType: 'sonny',
        ));
        print('successful');

        break;

      case 2:
        things.add(Camera(
          name: 'camera',
          brandType: 'lenovo',
        ));
        print('successful');

        break;
      case 3:
        things.add(Freezer(
          name: 'freezer',
          brandType: 'samsung',
        ));
        print('successful');
        break;
      default:
        print('please valid number');
        break;
    }
  }

  things.forEach(print);
}
