import 'location.dart';
import 'semester.dart';
import 'student.dart';
import 'course/course.dart';

/// semester id
/// course id
/// student id
/// result step =>

class University {
  final Location location;
  final List<Semester> _semesters = [];
  final List<Student> _students = [];
  final String name;
  final int id;

  University({
    required this.location,
    required this.name,
    required this.id,
  });

  void addStudent({
    required String name,
    required Location location,
    required int id,
  }) {
    final newStudent = Student(
      id: id,
      name: name,
      location: location,
    );

    _students.add(newStudent);
  }

  void addSemester({
    required String title,
    required int id,
  }) {
    final newSemester = Semester(id: id, title: title);

    _semesters.add(newSemester);
  }

  void addCourseToSemesterById({
    required int semesterId,
    required int courseId,
    required int courseUnitCount,
    required String courseTitle,
  }) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addGeneralCourse(
        id: courseId,
        unitCount: courseUnitCount,
        title: courseTitle,
      );
    }
  }

  void addStudentToCourse({
    required int studentId,
    required int semesterId,
    required int courseId,
  }) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final isSemesterFound = semesterIndex != -1;

    final int studentIndex =
        _students.indexWhere((element) => element.id == studentId);

    final isStudentFound = studentIndex != -1;

    if (isStudentFound && isSemesterFound) {
      final Semester semester = _semesters[semesterIndex];

      final Course? course = semester.getCourseById(
        courseId: courseId,
      );

      final student = _students[studentIndex];

      course?.addStudent(student);
    }
  }

  List<Semester> get semesters => _semesters;

  @override
  String toString() {
    return 'University{name: $name}';
  }
}
