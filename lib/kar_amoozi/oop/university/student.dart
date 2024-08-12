import 'location.dart';

class Student {
  final String name;
  final int id;
  final Location location;

  const Student({required this.name, required this.id, required this.location});

  @override
  String toString() {
    return 'Student{name: $name, id: $id, location: $location}';
  }
}
