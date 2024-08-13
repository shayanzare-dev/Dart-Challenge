import 'course.dart';

class Teacher {
  static int countId = 0;

  final int id;
  final String fullName;
  final int nationalCode;
  final List<Course> teachCourses = [];

  Teacher({
    required this.fullName,
    required this.nationalCode,
  }) : id = ++countId;

  void addCourse(Course course) {
    teachCourses.add(course);
  }

  @override
  String toString() {
    return 'Teacher{id: $id, fullName: $fullName, nationalCode: $nationalCode, teachCourses: $teachCourses}';
  }
}
