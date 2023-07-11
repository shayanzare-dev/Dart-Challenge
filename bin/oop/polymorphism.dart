enum CarType { benz, ferari, kmc, toyoa }

class Car {
  int? id;
  String? name;
  CarType? type;
  int? maxSpeed;

  Car({this.id, this.name, this.type, this.maxSpeed});

  void start() {
    print('car is started');
  }

  void stop() {
    print('car is stopped');
  }
}

class SportCar extends Car {
  SportCar(int id, String name) : super(id: id, name: name, type: CarType.benz);

  @override
  void start() {
    print('sportcar $name is started');
  }
}

class SuvCar extends Car {
  SuvCar(int id, String name) : super(id: id, name: name, type: CarType.kmc);

  @override
  void start() {
    print('sportcar $name is started');
  }
}

void letsDrive(Car car) {
  car.start();
}

void main() {
   Car sportCar = SportCar(2, 'bnz-569');
   Car suvCar = SuvCar(3, 'kmc-543');
  letsDrive(sportCar);
  letsDrive(suvCar);
  // چند بار اومدیم از یک شی در جاها و اسم های مختلف استفاده کردیم
}
