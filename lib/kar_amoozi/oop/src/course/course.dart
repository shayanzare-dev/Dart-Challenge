import '../student.dart';

abstract class Course {
  final String title;
  final int id;
  final int unitCount;
  final List<Student> _students = [];
  final double costFactor = 0;

  Course({
    required this.title,
    required this.id,
    required this.unitCount,
  });

  void addStudent(Student student) {
    _students.add(student);
  }

  @override
  String toString() {
    return 'Course{title: $title, id: $id, unitCount: $unitCount , cost factor:$costFactor}';
  }
}
