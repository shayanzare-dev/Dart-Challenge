import '../../university/student.dart';

abstract class Course {
  final String title;
  final int id;
  final int unitCount;
  final int costFactor = 0;
  final List<Student> _students = [];

  List<Student> get students => _students;

  Course({required this.title, required this.unitCount, required this.id});

  void addStudent(Student student) {
    _students.add(student);
  }

  @override
  String toString() {
    return 'Course{title: $title, id: $id, unitCount: $unitCount}';
  }
}
