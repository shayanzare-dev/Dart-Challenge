import 'exam.dart';

class Course {
  static int countId = 0;

  final int id;
  final String title;
  final List<Exam> _exams = [];

  List<Exam> get exams => _exams;

  Course({
    required this.title,
  }) : id = ++countId;

  double? getSumExamScore({required int studentNationalCode}) {
    if (exams.isNotEmpty) {
      int sum = 0;
      exams.forEach((element) {
        if (element.studentNationalCode == studentNationalCode) {
          sum += element.score;
        }
      });
      return sum / exams.length;
    }
    return null;
  }

  void addExam(Exam exam) {
    _exams.add(exam);
  }

  @override
  String toString() {
    return 'Course{id: $id, title: $title, exams: $exams}';
  }
}
