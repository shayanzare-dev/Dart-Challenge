import 'enums/type_bus.dart';
import 'normal_bus.dart';
import 'vip_bus.dart';

class Bus {
  num finalPrice;
  final String name;
  final TypeBus busType;
  final int? seatCount;

   Bus(this.name, this.busType, this.seatCount, [this.finalPrice = 0]);

  factory Bus.create({required String name, required int busType}) {
    if (busType == 1) {
      return VipBus(name, TypeBus.vip, 25);
    } else {
      return NormalBus(name, TypeBus.normal, 44);
    }
  }
}
