import 'course.dart';

class Student {
  static int countId = 0;

  final int id;
  final String fullName;
  final int nationalCode;
  final List<Course> _courses = [];

  List<Course> get courses => _courses;

  Student({
    required this.fullName,
    required this.nationalCode,
  }) : id = ++countId;

  void addCourse(Course course) {
    _courses.add(course);
  }

  double getAvg() {
    double result = 0;
    int dataCount = 0;
    courses.forEach((course) {
      final double? sumScore =
      course.getSumExamScore(studentNationalCode: nationalCode);
      if (sumScore != null && course.exams.isNotEmpty) {
        dataCount++;
        result += sumScore;
      }
    });
    return result / dataCount;
  }

  @override
  String toString() {
    return 'Student{id: $id, fullName: $fullName, nationalCode: $nationalCode, courses: $courses}';
  }
}
