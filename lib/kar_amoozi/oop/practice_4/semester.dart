import 'course.dart';

class Semester {
  final int id;
  final String title;
  final List<Course> _courses = [];

  Semester({required this.id, required this.title});

  void addCourse(
      {required int id, required int unitCount, required String title}) {
    final Course newCourse = Course(title: title, id: id, unitCount: unitCount);

    _courses.add(newCourse);
  }

  @override
  String toString() {
    return 'Semester{id: $id, title: $title}';
  }

// TODO(SHAYAN ZARE): LIST
}
