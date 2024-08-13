import 'exam.dart';

class Course {
  static int countId = 0;

  final int id;
  final String title;
  final List<Exam> exams = [];

  Course({
    required this.title,
  }) : id = ++countId;

  void addExam(Exam exam) {
    exams.add(exam);
  }

  @override
  String toString() {
    return 'Course{id: $id, title: $title}';
  }
}
