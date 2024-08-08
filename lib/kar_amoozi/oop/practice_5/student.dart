import 'location.dart';

class Student {
  final String name;
  final int id;
  final Location location;
  final int unitCount;

  const Student(
      {required this.name,
      required this.id,
      required this.location,
      required this.unitCount});
}
