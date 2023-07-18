/// اصل جایگزینی لیسکوف
/// فقط کلاس airplane از اصل جایگزینی لیسکوف پیروی کرده زیرا تمام متد های کلاس والدشو پیاده سازی کرده
class Vehicle {
  void moved() {}

  void fly() {}

  void startEngine() {}
}

class Airplane extends Vehicle {
  @override
  void moved() {
    print('move airplane');
  }

  @override
  void fly() {
    print('fly airplane');
  }

  @override
  void startEngine() {
    print('start engine airplane');
  }
}

class Car extends Vehicle {
  @override
  void moved() {
    print('move car');
  }

  @override
  void startEngine() {
    print('start engine car');
  }
}

class Bicycle extends Vehicle {
  @override
  void moved() {
    print('move bicycle');
  }
}
