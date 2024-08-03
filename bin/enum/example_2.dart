enum Descriptions { test1, test2, test3 }

enum Vehicle {
  benz(code: 82, description: Descriptions.test1),
  kmc(code: 2, description: Descriptions.test2),
  porsche(code: 98, description: Descriptions.test3);

  final int code;
  final Descriptions description;

  const Vehicle({required this.code, required this.description});

  int compare() {
    int max;
    if (Vehicle.benz.code > Vehicle.kmc.code &&
        Vehicle.benz.code > Vehicle.porsche.code) {
      max = Vehicle.benz.code;
    } else if (Vehicle.kmc.code > Vehicle.benz.code &&
        Vehicle.kmc.code > Vehicle.porsche.code) {
      max = Vehicle.kmc.code;
    } else {
      max = Vehicle.porsche.code;
    }
    return max;
  }
}

void main() {
  final vehicle = Vehicle.porsche.code;
  print(vehicle);
}
