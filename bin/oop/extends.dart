enum TypeBus {
  vip('vip bus'),
  normal('normal bus');

  final String value;

  const TypeBus(this.value);
}

class Bus {
  final int numberSeats;
  final String passenger;

  const Bus({required this.numberSeats, required this.passenger});

  factory Bus.create({required int numberSeats, required String passenger}) {
    if (numberSeats <= 25) {
      return VipNormal(
          numberSeats: numberSeats, passenger: passenger, typeBus: TypeBus.vip);
    } else {
      return NormalBus(
          numberSeats: numberSeats,
          passenger: passenger,
          typeBus: TypeBus.normal);
    }
  }
}

class VipNormal extends Bus {
  VipNormal(
      {required super.numberSeats,
        required super.passenger,
        required TypeBus typeBus}) {
    print('this is vip bus');
  }
}

class NormalBus extends Bus {
  NormalBus(
      {required super.numberSeats,
        required super.passenger,
        required TypeBus typeBus}) {
    print('this is normal bus');
  }
}

void main() {
  Bus.create(numberSeats: 34, passenger: 'shayan');
}
