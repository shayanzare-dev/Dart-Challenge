
enum Vehicle {
  benz(code: 82, description: 'benz is gang car'),
  kmc(code: 2, description: 'kmc is sport car'),
  porsche(code: 98, description: 'porsche is sport and gang car');

  final int code;
  final String description;

  const Vehicle({required this.code, required this.description});
}

void main() {
  // example
  final vehicle = Vehicle.benz.description;
  print(vehicle);
}
