import 'empty_space.dart';

class Area {
  final double area;
  final List<EmptySpace> emptySpace;

  const Area({required this.area, required this.emptySpace});

  double calculate() {
    double sum = 0;
    emptySpace.forEach((element) {
      sum += element.area;
    });
    return area - sum;
  }
}
