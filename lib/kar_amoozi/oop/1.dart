void main() {
  const Bmv bmv = Bmv('assa', 'brand');
  const Car benz = Car('Ass', 'vad');
  print(bmv is Car);
}

class Car {
  final String name, brand;

  const Car(this.name, this.brand);
}

class Bmv extends Car {
  const Bmv(super.name, super.brand);
}
