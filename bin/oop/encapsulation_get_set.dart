class Car {
  final String? _name;
  String? _hideCodeCar;

  set hideCodeCar(String value) => _hideCodeCar = value;

  get name => _name;

  Car.named([int id = 2, this._name]);
}

void main() {
  final Car car = Car.named(1, 'benz-c250');
  car.hideCodeCar = '#bHN-0/!';
}
