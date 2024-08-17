import 'course.dart';

class Student {
  static int countId = 0;

  final int id;
  final String fullName;
  final int nationalCode;
  final List<Course> courses;

  Student({required this.fullName,
    required this.nationalCode,
    required this.courses})
      : id = ++countId;

  @override
  String toString() {
    return 'Student{id: $id, fullName: $fullName, nationalCode: $nationalCode, courses: $courses}';
  }
}
