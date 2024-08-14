import 'exam.dart';
import 'student.dart';

class Course {
  static int countId = 0;

  final int id;
  final String title;
  final List<Exam> _exams = [];
  final List<Student> _students = [];

  List<Exam> get exams => _exams;

  List<Student> get students => _students;

  Course({
    required this.title,
  }) : id = ++countId;

  void addExam(Exam exam) {
    _exams.add(exam);
  }

  void addStudent(Student student) {
    _students.add(student);
  }

  @override
  String toString() {
    return 'Course{id: $id, title: $title, exams: $exams, students: $students}';
  }
}
