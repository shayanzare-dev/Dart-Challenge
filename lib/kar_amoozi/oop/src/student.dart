import 'location.dart';

class Student {
  final String name;
  final Location location;
  final int id;

  Student({
    required this.name,
    required this.location,
    required this.id,
  });

  @override
  String toString() {
    return 'Student{name: $name, id: $id, location: $location}';
  }
}
